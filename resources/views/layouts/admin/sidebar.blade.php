@php
use Illuminate\Support\Facades\DB;
$privileges = DB::table('privileges')
                ->join('menus', function ($join) {
                    $join->on('privileges.menu_id', '=', 'menus.id');
                })
                ->where('privileges.role_id', Auth::guard('admin')->user()->type)
                ->select('menus.menu_name')
                ->get()->toArray();
$privileges = array_column($privileges,'menu_name');
@endphp
<aside class="main-sidebar sidebar-dark-primary elevation-0 bg-dark">
    <a href="{{ url('admin/profile/update-admin-details') }}" class="brand-link bg-warning">
        <img src="{{ Auth::guard('admin')->user()->image? asset('public/uploads/admin/'. Auth::guard('admin')->user()->image): asset('public/frontend-assets/img/user.png') }}" alt="{{ $basicInfo->title }} Logo"
            class="brand-image img-circle elevation-3" style="opacity: .8" height="30" width="30">
        <span class="brand-text font-weight-dark text-dark">{{ Str::ucfirst(Auth::guard('admin')->user()->name) }}</span>
    </a>
    <div class="sidebar">
        <nav class="mt-2 mb-5">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <li class="nav-item {{ request()->is('admin/dashboard') ? 'menu-open' : '' }}">
                    <a href="{{ url('admin/dashboard') }}" class="nav-link {{ request()->is('admin/dashboard') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Dashboard
                        </p>
                    </a>
                </li>
                @if(Auth::guard('admin')->user()->type=='superadmin')
                    <li class="nav-item {{ request()->is('admin/basic-infos*') ? 'menu-open' : '' }}">
                        <a href="{{ url('admin/basic-infos') }}" class="nav-link {{ request()->is('admin/basic-infos*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-edit"></i>
                            <p>Basic Info Manage</p>
                        </a>
                    </li>
                @endif
                @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Admin',$privileges))
                <li class="nav-item {{ request()->is('admin/admin*') ? 'menu-open' : '' }}">
                    <a href="#" class="nav-link {{ request()->is('admin/admin*') ? 'active' : '' }}">
                      <i class="nav-icon fas fa-edit"></i>
                      <p>
                        Admin
                        <i class="fas fa-angle-left right"></i>
                      </p>
                    </a>
                    <ul class="nav nav-treeview">
                      @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Role Manage',$privileges))
                        <li class="nav-item">
                            <a href="{{ url('admin/admin/roles') }}" class="nav-link {{ request()->is('admin/admin/roles*') ? 'active' : '' }}">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Section Manage</p>
                            </a>
                        </li>
                      @endif
                      @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Admin Manage',$privileges))
                        <li class="nav-item">
                            <a href="{{ url('admin/admin/admins') }}" class="nav-link {{ request()->is('admin/admin/admins*') ? 'active' : '' }}">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Admin Manage</p>
                            </a>
                        </li>
                      @endif
                    </ul>
                </li>
                @endif
                {{-- @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Settings',$privileges)) --}}
                <li class="nav-item {{ request()->is('admin/profile/*') ? 'menu-open' : '' }}">
                    <a href="#" class="nav-link {{ request()->is('admin/profile/*') ? 'active' : '' }}">
                      <i class="nav-icon fas fa-edit"></i>
                      <p>
                        Settings
                        <i class="fas fa-angle-left right"></i>
                      </p>
                    </a>
                    <ul class="nav nav-treeview">
                      {{-- @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Update Password',$privileges)) --}}
                        <li class="nav-item">
                            <a href="{{ url('admin/profile/update-admin-password') }}" class="nav-link {{ request()->is('admin/profile/update-admin-password*') ? 'active' : '' }}">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Update Password</p>
                            </a>
                        </li>
                      {{-- @endif --}}
                      {{-- @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Update Details',$privileges)) --}}
                        <li class="nav-item">
                            <a href="{{ url('admin/profile/update-admin-details') }}" class="nav-link {{ request()->is('admin/profile/update-admin-details*') ? 'active' : '' }}">
                            <i class="far fa-circle nav-icon"></i>
                            <p>Update Details</p>
                            </a>
                        </li>
                      {{-- @endif --}}
                    </ul>
                </li>
                {{-- @endif --}}
                @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Review Manage',$privileges))
                    <li class="nav-item {{ request()->is('admin/task-types*') ? 'menu-open' : '' }}">
                        <a href="{{ url('admin/task-types') }}" class="nav-link {{ request()->is('admin/task-types*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-edit"></i>
                            <p>Task Type</p>
                        </a>
                    </li>
                @endif
                @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Review Manage',$privileges))
                    <li class="nav-item {{ request()->is('admin/tasks*') ? 'menu-open' : '' }}">
                        <a href="{{ url('admin/tasks') }}" class="nav-link {{ request()->is('admin/tasks*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-edit"></i>
                            <p>Task Manage</p>
                        </a>
                    </li>
                @endif
                @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Review Manage',$privileges))
                    <li class="nav-item {{ request()->is('admin/reports*') ? 'menu-open' : '' }}">
                        <a href="#" class="nav-link {{ request()->is('admin/reports*') ? 'active' : '' }}">
                            <i class="nav-icon fas fa-edit"></i>
                            <p>All Report<i class="fas fa-angle-left right"></i> </p>
                        </a>
                        <ul class="nav nav-treeview">
                            @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Role Manage',$privileges))
                              <li class="nav-item">
                                  <a href="{{ url('admin/reports/training-reports') }}" class="nav-link {{ request()->is('admin/reports/training-reports*') ? 'active' : '' }}">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Training Report</p>
                                  </a>
                              </li>
                            @endif
                            @if(Auth::guard('admin')->user()->type=='superadmin' || in_array('Admin Manage',$privileges))
                              <li class="nav-item">
                                  <a href="{{ url('admin/reports/training-expense-reports') }}" class="nav-link {{ request()->is('admin/reports/training-expense-reports*') ? 'active' : '' }}">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Expense Report</p>
                                  </a>
                              </li>
                            @endif
                        </ul>
                    </li>
                @endif
            </ul>
        </nav>
    </div>
</aside>
<aside class="control-sidebar control-sidebar-dark"></aside>
