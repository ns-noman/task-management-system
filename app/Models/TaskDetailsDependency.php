<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TaskDetailsDependency extends Model
{
    use HasFactory;
    protected $fillable = 
    [
        'task_id',
        'task_details_id',
        'task_type_id',
        'task_type_detais_id',
        'task_section_id',
        'received_by',
        'received_at',
        'completed_at',
        'shown_status',
        'completion_status',
    ];
    public function section()
    {
        return $this->belongsTo(Role::class, 'task_section_id');
    }
}
