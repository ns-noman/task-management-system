<?php

namespace App\Http\Controllers\admin;

use App\Models\Role;
use App\Models\User;
use App\Models\Menu;
use App\Models\Privilege;
use App\Models\Admin;
use App\Models\TaskTypeDetails;
use App\Models\TaskDetails;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
class RoleController extends Controller
{
    public function index()
    {
        $roles = Role::with('admin')->orderBy('id','desc')->get();
        return view('admin.roles.index', compact('roles'));
    }
    public function create()
    {
        return view('admin.roles.create');
    }

    public function store(Request $request)
    {
        $data['created_by'] = Auth::guard('admin')->user()->id;
        $data['role'] = $request->role;
        $role = Role::create($data);
        return redirect('admin/admin/roles')->with('alert',['messageType'=>'success','message'=>'Data Inserted Successfully!']);
    }

    public function edit(Role $role)
    {
        return view('admin.roles.edit',compact('role'));
    }
    public function update(Request $request,Role $role)
    {
        $data['created_by'] = Auth::guard('admin')->user()->id;
        $data['role'] = $request->role;
        $role->update($data);
        return redirect('admin/admin/roles')->with('alert',['messageType'=>'warning','message'=>'Data Updated Successfully!']);
    }
    public function destroy(Role $role)
    {
        $admin = Admin::where('type',$role->id)->count();
        $ttd = TaskTypeDetails::where('section_id',$role->id)->count();
        $td = TaskDetails::where('task_section_id',$role->id)->count();
        if(!($admin || $ttd || $td))
        {
            $role->delete();
            return redirect()->back()->with('alert',['messageType'=>'danger','message'=>'Data Deleted Successfully!']);
        }
        return redirect()->back()->with('alert',['messageType'=>'warning','message'=>'Data Deletion Failed']);
    }
}
