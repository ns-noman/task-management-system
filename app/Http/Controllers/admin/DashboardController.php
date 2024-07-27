<?php
namespace App\Http\Controllers\admin;

use App\Models\Task;
use App\Models\TaskDetails;
use App\Models\TaskDetailsDependency;
use App\Models\TaskType;
use App\Models\TaskTypeDetails;
use App\Models\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Auth;
use DB;

class DashboardController extends Controller
{
    public function index()
    {
        if(Auth::guard('admin')->user()->type == 'superadmin'){
            $data['tasks'] = Task::with('task_details_all')->where('status','!=',1)->get();
            $data['totalCompletedTask'] = Task::where('status','=',1)->count();
            $data['pendingTask'] = Task::where('status','!=',1)->count();
            $data['totalUsers'] = Admin::where('type','!=','superadmin')->count();

            $data['thisWeekCompTask'] = Task::whereBetween('created_at', [Carbon::now()->startOfWeek(), Carbon::now()->endOfWeek()])
                                            ->where('status',1)
                                            ->count();

            $data['todayCompTask'] = Task::whereDate('created_at',Carbon::today())
                                            ->where('status',1)
                                            ->count();

            $data['thisMonthCompTask'] = Task::whereMonth('created_at', Carbon::now()->month)
                                            ->whereYear('created_at', Carbon::now()->year)
                                            ->where('status',1)
                                            ->count();
                                
                                            

        }else
        {

            $data['tasks'] = Task::join('task_details', 'task_details.task_id', '=', 'tasks.id')
                                    ->join('task_details_dependencies', 'task_details_dependencies.task_details_id', '=', 'task_details.id')
                                    ->where(['task_details.task_section_id'=> Auth::guard('admin')->user()->type])
                                    ->where('task_details.status','!=',1)
                                    ->where(['task_details_dependencies.shown_status'=>1,'task_details_dependencies.completion_status'=>0])
                                    ->where('tasks.status','!=',1)
                                    ->select('tasks.*')
                                    ->groupBy('tasks.id')
                                    ->get()->toArray();

            foreach ($data['tasks'] as $taskkey => $task) {
                $data['tasks'][$taskkey]['task_details'] = TaskDetails::join('roles','roles.id','=','task_details.task_section_id')
                                                        ->where(['task_details.task_id'=>$task['id'],'task_details.task_section_id'=> Auth::guard('admin')->user()->type])
                                                        ->where('task_details.status','!=',1)
                                                        ->select('task_details.*', 'roles.role as section')
                                                        ->get()
                                                        ->toArray();
                        foreach ($data['tasks'][$taskkey]['task_details'] as $taskddkey => $taskdd) {
                            $data['tasks'][$taskkey]['task_details'][$taskddkey]['task_details_dependency'] = TaskDetailsDependency::where(['task_details_dependencies.task_details_id'=> $taskdd['id'],'task_details_dependencies.shown_status'=>1,'task_details_dependencies.completion_status'=>0])
                                                        ->join('roles','roles.id','=','task_details_dependencies.task_section_id')
                                                        ->select('task_details_dependencies.*','roles.role as section')
                                                        ->get()
                                                        ->toArray();
                        }
            }
        }
        return view('admin.index', compact('data'));
    }


    public function updateStatus(Request $request)
    {
        $task_id = $request->task_id;
        $task_details_id = $request->task_details_id;
        $task_details_dependency_id = $request->task_details_dependency_id;
        $task_type_id = $request->task_type_id;
        $task_type_detais_id = $request->task_type_detais_id;
        $task_section_id = $request->task_section_id;
        $status_type = $request->status_type;


        if($status_type=='Receive'){

            TaskDetails::find($task_details_id)->update(['status'=>-1]);
            TaskDetailsDependency::find($task_details_dependency_id)
            ->update(['received_at'=> date('Y-m-d h:i:s'),'received_by'=> Auth::guard('admin')->user()->type]);
            Task::find($task_id)->update(['status'=>-1]);
            
        }else if($status_type=='Reject'){
            TaskDetails::find($task_details_id)->update(['status'=>0]);
            TaskDetailsDependency::find($task_details_dependency_id)
                                ->update(['received_at'=> null,'received_by'=> null]);
        }else if($status_type=='Complete'){

            TaskDetailsDependency::find($task_details_dependency_id)->update(['completed_at'=> date('Y-m-d h:i:s'),'completion_status'=>1]);
            $tdd = TaskDetailsDependency::where(['task_details_id'=>$task_details_id,'task_id'=>$task_id,'completion_status'=>0])->get();
            if(!count($tdd)){
                TaskDetails::find($task_details_id)->update(['status'=>1]);
            
                $taskTypeDetails = TaskTypeDetails::where(['task_type_id'=> $task_type_id, 'id'=> $task_type_detais_id])->first();

                $next_section_ids = explode(',',$taskTypeDetails->next_section_ids);

                foreach ($next_section_ids as $key => $next_section_id) {
                    if($next_section_id!=0){
                        $taskdetails = TaskDetails::where(['task_id'=>$task_id, 'task_section_id'=>$next_section_id])->first();
                        TaskDetailsDependency::where(['task_details_id'=>$taskdetails->id,'task_id'=>$task_id, 'task_section_id'=>$task_section_id])->update(['shown_status'=>1]);
                    }
                }
                $inCompletedTaskDetails = TaskDetails::where(['task_id'=>$task_id])->where('status','!=',1)->get();
                if(!count($inCompletedTaskDetails)){
                    Task::find($task_id)->update(['status'=>1]);
                }
            }
        }
        return response()->json(true, 200);
    }

}