<?php

namespace App\Http\Controllers\admin;

use App\Models\Task;
use App\Models\TaskType;
use App\Models\TaskTypeDetails;
use App\Models\TaskDetailsDependency;
use App\Models\TaskDetails;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;

class TaskController extends Controller
{
    public function index()
    {
        $tasks = Task::with(['task_details','task_type'])->orderBy('status','asc')->get();
        return view('admin.tasks.index', compact('tasks'));
    }

    public function createOrEdit($id=null)
    {
        if($id){
            $data['title'] = 'Edit';
            $data['task'] = Task::find($id);
            $data['taskDetails'] = TaskDetails::with('section')->where('task_type_id','=',$id)->get();
        }else{
            $data['title'] = 'Create';
        }
        $data['taskTypes'] = TaskType::orderBy('name','asc')->where('status',1)->get();
        return view('admin.tasks.create-or-edit',compact('data'));
    }


    public function store(Request $request)
    {

        $name = $request->name;
        $task_type_id = $request->task_type_id;

        $task = Task::create(['name'=>$name, 'task_type_id'=>$task_type_id, 'created_by_id'=> Auth::guard('admin')->user()->id]); 
        $taskTypeDetails = TaskTypeDetails::where('task_type_id', $task_type_id)->get();

        foreach ($taskTypeDetails as $key => $ttd){
            $taskDetails =
            [
                'task_id'=> $task->id,
                'task_type_id'=> $task_type_id,
                'task_type_detais_id'=> $ttd->id,
                'task_section_id'=> $ttd->section_id,
                'task_section_value'=> $ttd->section_value,
                'status'=> 0,
            ];
            $taskDetails = TaskDetails::create($taskDetails);
            $next_section_ids = explode(',',$ttd->next_section_ids);
            $dependency_section_ids = explode(',',$ttd->dependency_section_ids);

            foreach ($dependency_section_ids as $nsikey => $dependency_section_id) {
                $taskDetailsDep = 
                [
                    'task_id'=> $task->id,
                    'task_details_id'=> $taskDetails->id,
                    'task_type_id'=> $task_type_id,
                    'task_type_detais_id'=> $ttd->id,
                    'task_section_id'=> $dependency_section_id,
                    'shown_status'=> $ttd->section_id == $dependency_section_id ? 1 : 0,
                ];
                TaskDetailsDependency::create($taskDetailsDep);
            }

        }
        
        return redirect('admin/tasks')->with('alert',['messageType'=>'success','message'=>'Data Inserted Successfully!']);
    }

    public function show(Task $task)
    {

    }

    public function edit(Task $task)
    {
        
    }

    public function update(Request $request, Task $task)
    {
        
    }

    public function destroy(Task $task)
    {
        if($task->status!=1){
            $task->delete();
            TaskDetails::where('task_id', $task->id)->delete();
            TaskDetailsDependency::where('task_id', $task->id)->delete();
            return redirect('admin/tasks')->with('alert',['messageType'=>'success','message'=>'Data Deleted Successfully!']);
        }else{
            return redirect('admin/tasks')->with('alert',['messageType'=>'danger','message'=>'Data Deletion Failed!']);
        }
    }
}
