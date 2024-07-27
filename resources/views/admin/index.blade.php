@php
    // use Illuminate\Support\Facades\DB;
    // $privileges = DB::table('privileges')
    //     ->join('menus', function ($join) {
    //         $join->on('privileges.menu_id', '=', 'menus.id');
    //     })
    //     ->where('privileges.role_id', Auth::guard('admin')->user()->type)
    //     ->select('menus.menu_name')
    //     ->get()
    //     ->toArray();
    // $privileges = array_column($privileges, 'menu_name');
    $basicInfo = App\Models\BasicInfo::first();
@endphp
@extends('layouts.admin.master')
@section('content')
    <div class="content-wrapper">
        <div class="content-header">
            @include('layouts.admin.flash-message')
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Dashboard</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{ url('admin/dashboard') }}">Home</a></li>
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    
                    <div class="col-12">
                        <div class="row">

                            @if(Auth::guard('admin')->user()->type=='superadmin')
                                <div class="col-lg-3 col-md-3 col-sm-6">
                                    <div class="small-box bg-success">
                                        <div class="inner"><h3>{{ $data['todayCompTask'] }}</h3>
                                            <p>Today’s Completed Task</p>
                                        </div>
                                        <div class="icon">
                                            <i class="ion ion-bag"></i>
                                        </div>
                                        <a href="#" class="small-box-footer">More info
                                            <i class="fas fa-arrow-circle-right"></i></a>
                                    </div>
                                </div>
                            @endif
                            
                            @if(Auth::guard('admin')->user()->type=='superadmin')
                                <div class="col-lg-3 col-md-3 col-sm-6">
                                    <div class="small-box bg-success">
                                        <div class="inner"><h3>{{ $data['thisWeekCompTask'] }}</h3>
                                            <p>This week's Completed Task</p>
                                        </div>
                                        <div class="icon">
                                            <i class="ion ion-bag"></i>
                                        </div>
                                        <a href="#" class="small-box-footer">More info
                                            <i class="fas fa-arrow-circle-right"></i></a>
                                    </div>
                                </div>
                            @endif
                            
                            @if(Auth::guard('admin')->user()->type=='superadmin')
                                <div class="col-lg-3 col-md-3 col-sm-6">
                                    <div class="small-box bg-success">
                                        <div class="inner"><h3>{{ $data['thisMonthCompTask'] }}</h3>
                                            <p>This month's Completed Task</p>
                                        </div>
                                        <div class="icon">
                                            <i class="ion ion-bag"></i>
                                        </div>
                                        <a href="#" class="small-box-footer">More info
                                            <i class="fas fa-arrow-circle-right"></i></a>
                                    </div>
                                </div>
                            @endif
                            @if(Auth::guard('admin')->user()->type=='superadmin')
                                <div class="col-lg-3 col-md-3 col-sm-6">
                                    <div class="small-box bg-success">
                                        <div class="inner"><h3>{{ $data['totalCompletedTask'] }}</h3>
                                            <p>Total Completed Task</p>
                                        </div>
                                        <div class="icon">
                                            <i class="ion ion-bag"></i>
                                        </div>
                                        <a href="#" class="small-box-footer">More info
                                            <i class="fas fa-arrow-circle-right"></i></a>
                                    </div>
                                </div>
                            @endif
                            @if(Auth::guard('admin')->user()->type=='superadmin')
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="small-box bg-warning">
                                        <div class="inner"><h3>{{ $data['pendingTask'] }}</h3>
                                            <p>Pending Task</p>
                                        </div>
                                        <div class="icon">
                                            <i class="ion ion-bag"></i>
                                        </div>
                                        <a href="#" class="small-box-footer">More info
                                            <i class="fas fa-arrow-circle-right"></i></a>
                                    </div>
                                </div>
                            @endif
                            @if(Auth::guard('admin')->user()->type=='superadmin')
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="small-box bg-info">
                                        <div class="inner"><h3>{{ $data['totalUsers'] }}</h3>
                                            <p>Total Users</p>
                                        </div>
                                        <div class="icon">
                                            <i class="ion ion-bag"></i>
                                        </div>
                                        <a href="#" class="small-box-footer">More info
                                            <i class="fas fa-arrow-circle-right"></i></a>
                                    </div>
                                </div>
                            @endif
                        </div>
                    </div>
                    @if (Auth::guard('admin')->user()->type == 'superadmin')
                        @foreach($data['tasks'] as $key => $task)
                            <div class="col-lg">
                                <div class="small-box bg-dark">
                                    <div class="inner">
                                        <h3>{{ $task->name }}</h3>
                                        <ul>
                                            @foreach($task->task_details_all as $key => $taskDetails)
                                                <li>{{ $taskDetails->section->role }}&nbsp;
                                                    @if($taskDetails->status == 1)
                                                        <span class="badge badge-success">Completed</span>
                                                    @elseif($taskDetails->status == -1)
                                                        <span class="badge badge-warning">Processing</span>
                                                    @else
                                                        <span class="badge badge-danger">Pending</span>
                                                    @endif
                                                </li>
                                            @endforeach
                                        </ul>
                                    </div>
                                    <div class="icon">
                                        <i class="ion ion-bag"></i>
                                    </div>
                                    <a href="#" class="small-box-footer">More info <i
                                            class="fas fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                        @endforeach
                    @endif
                    @if (Auth::guard('admin')->user()->type != 'superadmin')
                        @foreach($data['tasks'] as $key => $task)
                            <div class="col-lg">
                                <div class="small-box bg-dark">
                                    <div class="inner">
                                        <h3>{{ $task['name'] }}</h3>
                                        <ul>
                                            @foreach($task['task_details'] as $key => $taskDetails)
                                                <li>{{ $taskDetails['section'] }}&nbsp;
                                                    @if($taskDetails['status'] == 1)
                                                        <span class="badge badge-success">Completed</span>
                                                    @elseif($taskDetails['status'] == -1)
                                                        <span class="badge badge-warning">Processing</span>
                                                    @else
                                                        <span class="badge badge-danger">Pending</span>
                                                    @endif
                                                    <ul>
                                                        @foreach($taskDetails['task_details_dependency'] as $tddkey => $tdd)
                                                            <li>{{ $tdd['section'] }}
                                                                @if($tdd['received_by'])
                                                                    <button
                                                                        class="badge badge-success">Received
                                                                    </button>
                                                                    @if($tdd['received_by']==Auth::guard('admin')->user()->type)
                                                                        <button
                                                                            task_id="{{ $tdd['task_id'] }}"
                                                                            task_details_id="{{ $tdd['task_details_id'] }}"
                                                                            task_details_dependency_id="{{ $tdd['id'] }}"
                                                                            task_type_id="{{ $tdd['task_type_id'] }}"
                                                                            task_type_detais_id="{{ $tdd['task_type_detais_id'] }}"
                                                                            task_section_id="{{ $taskDetails['task_section_id'] }}"
                                                                            status_type="Reject"
                                                                            class="badge badge-danger update-status">Reject
                                                                        </button>
                                                                        <button
                                                                            task_id="{{ $tdd['task_id'] }}"
                                                                            task_details_id="{{ $tdd['task_details_id'] }}"
                                                                            task_details_dependency_id="{{ $tdd['id'] }}"
                                                                            task_type_id="{{ $tdd['task_type_id'] }}"
                                                                            task_type_detais_id="{{ $tdd['task_type_detais_id'] }}"
                                                                            task_section_id="{{ $taskDetails['task_section_id'] }}"
                                                                            status_type="Complete"
                                                                            class="badge badge-warning update-status">Complete
                                                                        </button>
                                                                    @endif
                                                                @else
                                                                    <button
                                                                        task_id="{{ $tdd['task_id'] }}"
                                                                        task_details_id="{{ $tdd['task_details_id'] }}"
                                                                        task_details_dependency_id="{{ $tdd['id'] }}"
                                                                        task_type_id="{{ $tdd['task_type_id'] }}"
                                                                        task_type_detais_id="{{ $tdd['task_type_detais_id'] }}"
                                                                        task_section_id="{{ $taskDetails['task_section_id'] }}"
                                                                        status_type="Receive"
                                                                        class="badge badge-primary update-status">Receive
                                                                    </button>
                                                                @endif
                                                            </li>
                                                        @endforeach
                                                    </ul>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </div>
                                    <div class="icon">
                                        <i class="ion ion-bag"></i>
                                    </div>
                                    <a href="#" class="small-box-footer">More info <i
                                            class="fas fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                        @endforeach
                    @endif
                </div>
            </div>
        </section>
    </div>
@endsection

@section('script')
<script>
    $(document).ready(function(){
        $('.update-status').click(function(e){
            e.preventDefault();
                let element = $(this);
                Swal.fire({
                    title: "Are you sure?",
                    text: "You won't be able to revert this!",
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "Yes, "+element.attr('status_type')+" it!"
                }).then((result) => {
                    if (result.isConfirmed){
                        const data = {};
                        data.task_id = element.attr('task_id');
                        data.task_details_id = element.attr('task_details_id');
                        data.task_details_dependency_id = element.attr('task_details_dependency_id');
                        data.task_type_id = element.attr('task_type_id');
                        data.task_type_detais_id = element.attr('task_type_detais_id');
                        data.task_section_id = element.attr('task_section_id');
                        data.status_type = element.attr('status_type');
                        $.ajax({
                            headers: {
                                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                            },
                            url: "{{ url('admin/dashboard-update-status') }}",
                            type: 'POST',
                            data: data,
                            success: function(res){
                                if(res){
                                    location.reload();
                                }
                            }
                        });

                    }
            });
        });
    });


</script>
@endsection