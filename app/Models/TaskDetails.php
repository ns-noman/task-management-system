<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TaskDetails extends Model
{
    use HasFactory;

    protected $fillable = 
    [
        'task_id',
        'task_type_id',
        'task_type_detais_id',
        'task_section_id',
        'task_section_value',
        'status',
    ];
    public function section()
    {
        return $this->belongsTo(Role::class, 'task_section_id');
    }
    public function task_details_dependency()
    {
        return $this->hasMany(TaskDetailsDependency::class, 'task_details_id')->with('section');
    }
}