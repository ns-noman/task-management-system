<?php

namespace App\Http\Controllers\admin;

use App\Models\Task;
use App\Models\TaskType;
use App\Models\TaskTypeDetails;
use App\Models\Role;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;

class TaskTypeController extends Controller
{
    public function index()
    {
        $taskTypes = TaskType::orderBy('id','desc')->get();
        return view('admin.task-types.index', compact('taskTypes'));
    }

    public function createOrEdit($id=null)
    {
        if($id){
            $data['title'] = 'Edit';
            $data['taskType'] = TaskType::find($id);
            $data['taskTypeDetails'] = TaskTypeDetails::with('section')->where('task_type_id','=',$id)->get();
            //Making Section Texts...
            foreach ($data['taskTypeDetails'] as $ttdkey => $taskTypeDetails) {
                $text = [];
                $next_section_ids = explode(',', $taskTypeDetails->next_section_ids);
                foreach ($next_section_ids as $key => $next_section_id) {
                    $role = Role::find($next_section_id);
                    $text[$key] = isset($role) ? $role->role : 'Final';
                }
                $data['taskTypeDetails'][$ttdkey]->next_section_texts = implode(", ",$text);

                $text = [];
                $dependency_section_ids = explode(',', $taskTypeDetails->dependency_section_ids);
                foreach ($dependency_section_ids as $key => $dependency_section_id) {
                    $text[$key] = Role::find($dependency_section_id)->role;
                }
                $data['taskTypeDetails'][$ttdkey]->dependency_section_texts = implode(", ",$text);
            }

        }else{
            $data['title'] = 'Create';
        }
        $data['sections'] = Role::orderBy('role','asc')->get();
        return view('admin.task-types.create-or-edit',compact('data'));
    }

    public function store(Request $request)
    {
        $section_id = $request->section_id;
        $section_value = $request->section_value;
        $next_section_ids = $request->next_section_ids;
        $next_section_texts = $request->next_section_texts;
        $dependency_section_ids = $request->dependency_section_ids;
        $dependency_section_texts = $request->dependency_section_texts;

        $taskTypeData =
        [
            'name'=> $request->name,
            'status'=> $request->status,
            'created_by_id'=> Auth::guard('admin')->user()->id,
        ];
        $taskType = TaskType::create($taskTypeData);

        for($i = 0; $i < count($section_id); $i++) {    
           $taskTypeDetails = 
            [
                'task_type_id'=> $taskType->id,
                'section_id'=> $section_id[$i],
                'next_section_ids'=> $next_section_ids[$i],
                'next_section_texts'=> $next_section_texts[$i],
                'dependency_section_ids'=> $dependency_section_ids[$i],
                'dependency_section_texts'=> $dependency_section_texts[$i],
                'section_value'=> $section_value[$i],
            ];
            TaskTypeDetails::create($taskTypeDetails);
        }
        return redirect('admin/task-types')->with('alert',['messageType'=>'success','message'=>'Data Inserted Successfully!']);
    }

    public function edit(TaskType $taskType)
    {
    
    }

    public function update(Request $request, TaskType $taskType)
    {
        $section_id = $request->section_id;
        $section_value = $request->section_value;
        $taskTypeData =
        [
            'name'=> $request->name,
            'status'=> $request->status,
            'updated_by_id'=> Auth::guard('admin')->user()->id,
        ];
        $taskType->update($taskTypeData);
        for($i = 0; $i < count($section_id); $i++) { 
            TaskTypeDetails::where(['task_type_id'=> $taskType->id,'section_id'=> $section_id[$i]])->update(['section_value'=> $section_value[$i]]);
        }
        return redirect('admin/task-types')->with('alert',['messageType'=>'success','message'=>'Data Updated Successfully!']);
    }

    public function destroy(TaskType $taskType)
    {
        $isUsed = Task::where('task_type_id', $taskType->id)->count();
        if(!$isUsed){
            $taskType->delete();
            return redirect('admin/task-types')->with('alert',['messageType'=>'success','message'=>'Data Deleted Successfully!']);
        }else{
            return redirect('admin/task-types')->with('alert',['messageType'=>'danger','message'=>'Data Deletion Failed!']);
        }
    }
}
