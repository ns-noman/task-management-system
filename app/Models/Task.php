<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Auth;

class Task extends Model
{
    use HasFactory;
    protected $fillable = 
    [
        'task_type_id',
        'name',
        'status',
        'created_by_id',
        'updated_by_id',
    ];


    public function task_details()
    {
        return $this->hasMany(TaskDetails::class, 'task_id')->where('status',1);
    }
    public function task_details_all()
    {
        return $this->hasMany(TaskDetails::class, 'task_id')->with(['section','task_details_dependency']);
    }
    // public function task_details_user()
    // {
    //     return $this->hasMany(TaskDetails::class, 'task_id')
    //                 ->with(['section','task_details_dependency'])
    //                 ->where(['task_section_id'=> Auth::guard('admin')->user()->type, 'status'=> 0]);
    // }
    public function task_type()
    {
        return $this->belongsTo(TaskType::class, 'task_type_id');
    }
}
