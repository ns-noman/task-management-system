@extends('layouts.admin.master')
@section('content')
    <div class="content-wrapper">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Task Types</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{ url('admin/dashboard') }}">Dashboard</a></li>
                            <li class="breadcrumb-item active">Task Types</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">{{ $data['title'] }} Form</h3>
                            </div>
                            <form id="form-submit" action="{{ isset($data['taskType']) ? route('task-types.update',$data['taskType']->id) : route('task-types.store'); }}" method="POST" enctype="multipart/form-data">
                                @csrf()
                                @if(isset($data['taskType']))
                                    @method('put')
                                @endif
                                <div class="card-body">
                                    <div class="row">
                                        <div class="form-group col-sm-12 col-md-6 col-lg-6">
                                            <label>Task Type Name</label>
                                            <input value="{{ isset($data['taskType']) ? $data['taskType']->name : null }}" type="text" class="form-control" name="name" placeholder="Task Type Name" required>
                                        </div>
                                        <div class="form-group col-sm-12 col-md-6 col-lg-6">
                                            <label>Status</label>
                                            <select name="status" id="status" class="form-control">
                                                <option {{ isset($data['taskType']) ? $data['taskType']->status == 1 ? 'selected' : null : null }} value="1">Active</option>
                                                <option {{ isset($data['taskType']) ? $data['taskType']->status == 0 ? 'selected' : null : null }} value="0">Inactive</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-sm-12 col-md-12 col-lg-12">
                                            <table id="expanse-table" class="table table-striped table-bordered table-centre p-0 m-0">
                                                <thead>
                                                    <tr>
                                                        <th width="5%">SN</th>
                                                        <th>Section</th>
                                                        <th>Next Sections</th>
                                                        <th>Depandency Sections</th>
                                                        <th>Section Value(%)</th>
                                                        <th width="5%">Action</th>
                                                    </tr>
                                                    @if(!isset($data['taskType']))
                                                        <tr class="p-0 m-0">
                                                            <th>#</th>
                                                            <th width="25%">
                                                                <select class="form-control form-control" id="section_id">
                                                                    <option value="" selected>Select Section</option>
                                                                    @foreach($data['sections'] as $key => $section)
                                                                        <option value="{{ $section->id }}" section-title="{{ $section->role }}">{{ $section->role }}</option>
                                                                    @endforeach
                                                                </select>
                                                            </th>
                                                            <th width="25%">
                                                                <select class="select2" id="next_sections_temp" name="next_sections_temp[]" multiple="multiple" data-placeholder="Select Batch" style="width: 100%;">
                                                                    @foreach($data['sections'] as $key => $section)
                                                                        <option value="{{ $section->id }}" section-title="{{ $section->role }}">{{ $section->role }}</option>
                                                                    @endforeach
                                                                    <option value="0">Final</option>
                                                                </select>
                                                            </th>
                                                            <th width="25%">
                                                                <select class="select2" id="dependency_sections_temp" name="dependency_sections_temp[]" multiple="multiple" data-placeholder="Select Batch" style="width: 100%;">
                                                                    @foreach($data['sections'] as $key => $section)
                                                                        <option value="{{ $section->id }}" section-title="{{ $section->role }}">{{ $section->role }}</option>
                                                                    @endforeach
                                                                </select>
                                                            </th>
                                                            <th width="15"><input placeholder="0.00" type="number" class="form-control form-control-sm" id="section_value"></th>
                                                            <th><button id="btn-add" class="btn btn-sm btn-primary" type="button"><i class="fa-sharp fa-solid fa-plus"></i></button></th>
                                                        </tr>
                                                    @endif
                                                </thead>
                                                <tbody id="table-data">
                                                    @if(isset($data['taskType']))
                                                        @foreach($data['taskTypeDetails'] as $key => $value)
                                                            <tr>
                                                                <td class="serial">{{ $loop->iteration }}</td>
                                                                <td><input type="hidden" value="{{ $value->section_id }}" name="section_id[]">{{ $value->section->role }}</td>
                                                                <td>{{ $value->next_section_texts }}</td>
                                                                <td>{{ $value->dependency_section_texts }}</td>
                                                                <td><input type="number" value="{{ $value->section_value }}" class="form-control form-control-sm calculate" name="section_value[]" placeholder="0.00" required></td>
                                                                <td><button disabled class="btn btn-sm btn-danger btn-del" type="button"><i class="fa-solid fa-trash btn-del"></i></button></td>
                                                            </tr>
                                                        @endforeach
                                                    @endif
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
@endsection

@section('script')
<script>
    $(document).ready(function(){
        $('#table-data').bind('click', function (e) {
            $(e.target).is('.btn-del') && e.target.closest('tr').remove();
            $( ".serial" ).each(function(index){$(this).html(index+1);});
        });

        $('#btn-add').click(function(){
            let next_sections_text = $('#next_sections_temp option:selected').toArray().map(item => item.text).join(', ');
            let next_sections_id = $('#next_sections_temp').val();

            let dependency_sections_text = $('#dependency_sections_temp option:selected').toArray().map(item => item.text).join(', ');
            let dependency_sections_id = $('#dependency_sections_temp').val();

            let section_id = $('#section_id').val();
            let section_title = $('#section_id option:selected').attr('section-title');
            let section_value = $('#section_value').val();

            let td = '';
            if(!(section_id && section_value)) return alert("Please fill up required field!");
            td += '<tr>';
            td += '<td class="serial"></td>';
            td += '<td><input type="hidden" value="'+section_id+'" name="section_id[]">'+section_title+'</td>';
            td += '<td>';
            td +=       next_sections_text + '<input type="hidden" value="'+next_sections_id+'" name="next_section_ids[]">';
            td +=       '<input type="hidden" value="'+next_sections_text+'" name="next_section_texts[]">';
            td += '</td>';
            td += '<td>';
            td +=       dependency_sections_text + '<input type="hidden" value="'+dependency_sections_id+'" name="dependency_section_ids[]">';
            td +=       '<input type="hidden" value="'+dependency_sections_text+'" name="dependency_section_texts[]">';
            td += '</td>';
            td += '<td><input type="number" value="'+section_value+'" class="form-control form-control-sm calculate" name="section_value[]" placeholder="0.00" required></td>';
            td += '<td><button class="btn btn-sm btn-danger btn-del" type="button"><i class="fa-solid fa-trash btn-del"></i></button></td>';
            td += '</tr>';

            $('#table-data').append(td);
            $( ".serial" ).each(function(index){$(this).html(index+1);});
            $('#section_id').val('');
            $('#section_value').val('');

            $('#dependency_sections_temp option:selected').each(function() {
                $(this)[0].selected = false;
            });
            $('#next_sections_temp option:selected').each(function() {
                $(this)[0].selected = false;
            });

        });
    });

    $('#form-submit').submit(function(e){
        let value = 0;
        let section_value = $('input[name="section_value[]"]');
        let next_section_ids = $('input[name="next_section_ids[]"]');
        let finalExist = false;

        if(!section_value.length){
            e.preventDefault();
            return alert('Please Insert Section!');
        }

        section_value.each(function(element){
            value += parseInt($(this).val());
        });
        next_section_ids.each(function(element){
            if($(this).val()==0){
                finalExist = true;
            }
        });

        if(value != 100){
            e.preventDefault();
            alert('Section value must be equal to 100');
        }
        
        if(!finalExist){
            e.preventDefault();
            alert('Please select at least one section as final!');
        }
    });
</script>
@endsection