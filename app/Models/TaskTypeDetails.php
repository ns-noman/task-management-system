<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TaskTypeDetails extends Model
{
    use HasFactory;
    protected $fillable = 
    [
        'task_type_id',
        'section_id',
        'next_section_ids',
        'dependency_section_ids',
        'section_value',
    ];

    public function section()
    {
        return $this->belongsTo(Role::class, 'section_id');
    }
}
