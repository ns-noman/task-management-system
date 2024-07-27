@extends('layouts.admin.master')
@section('content')
    <div class="content-wrapper">
        <div class="content-header">
            @include('layouts.admin.flash-message')
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Task</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{ url('admin/dashboard') }}">Dashboard</a></li>
                            <li class="breadcrumb-item active">Task</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <section class="col-lg-12">
                        <div class="card">
                            <div class="card-header bg-primary p-1">
                                <h3 class="card-title">
                                    <a href="{{ url('admin/tasks-create-or-edit') }}"class="btn btn-light shadow rounded m-0"><i
                                            class="fas fa-plus"></i>
                                        <span>Add New</span></i></a>
                                </h3>
                            </div>
                            <div class="card-body">
                                <div class="bootstrap-data-table-panel">
                                    <div class="table-responsive">
                                        <table id="example1" class="table table-striped table-bordered table-centre">
                                            <thead>
                                                <tr>
                                                    <th>SN</th>
                                                    <th>Task Name</th>
                                                    <th>Task Type</th>
                                                    <th>Progression</th>
                                                    <th>Created at</th>
                                                    <th>Completed at</th>
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($tasks as $task)
                                                    <tr>
                                                        <td>{{ $loop->iteration }}</td>
                                                        <td>{{ $task->name }}</td>
                                                        <td>{{ $task->task_type->name }}</td>
                                                        <td vartical-align="middle">
                                                            <div class="progress progress-bar-striped bg-danger">
                                                                <div class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: {{ array_sum(array_column($task->task_details->toArray(), 'task_section_value')) }}%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">{{ array_sum(array_column($task->task_details->toArray(), 'task_section_value')) }}%</div>
                                                            </div>
                                                        </td>
                                                        <td>{{ date_format($task->created_at, "Y-m-d h:i:s a") }}</td>
                                                        <td>
                                                            @if($task->status == 1)
                                                                {{ date_format($task->updated_at, "Y-m-d h:i:s a") }}</td>
                                                            @endif
                                                        <td>
                                                            @if($task->status == 1)
                                                                <span class="badge badge-success">Completed</span>
                                                            @elseif($task->status == -1)
                                                                <span class="badge badge-warning">Processing</span>
                                                            @else
                                                                <span class="badge badge-danger">Pending</span>
                                                            @endif
                                                        </td>
                                                        <td>
                                                            <div class="d-flex justify-content-center">
                                                                <form class="delete" action="{{ route('tasks.destroy', $task->id) }}" method="post">
                                                                    @csrf
                                                                    @method('DELETE')
                                                                    <button type="submit" class="btn btn-danger"><i class="fa-solid fa-trash"></i></button>
                                                                </form>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </section>
    </div>
@endsection
