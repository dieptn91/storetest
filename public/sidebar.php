<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Xin chào <?=$obj->tendangnhap??$_SESSION['login_name']?></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            
            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            

            <!-- Heading quản lí sản xuất-->
            <div class="sidebar-heading">
                Quản lí sản xuất
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Sản phẩm</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Tác vụ</h6>
                        <a class="collapse-item" href="index.php?controller=sanpham&action=index">Danh sách sản phẩm</a>
                        <a class="collapse-item" href="index.php?controller=sanpham&action=them">Thêm sản phẩm</a>
                        <!--<a class="collapse-item" href="index.php?controller=nguoidung&action=them">Sửa sản phẩm</a>
                        <a class="collapse-item" href="forgot-password.html">Xóa sản phẩm</a>-->
                        <div class="collapse-divider"></div>
                    </div>
                </div>
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages01"
                    aria-expanded="true" aria-controls="collapsePages01">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Loại Sản phẩm</span>
                </a>
                <div id="collapsePages01" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Tác vụ</h6>
                        <a class="collapse-item" href="index.php?controller=loaisanpham&action=index">Danh sách loại sản phẩm</a>
                        <a class="collapse-item" href="index.php?controller=loaisanpham&action=them">Thêm loại sản phẩm</a>
                        <!--<a class="collapse-item" href="index.php?controller=nguoidung&action=them">Sửa loại sản phẩm</a>
                        <a class="collapse-item" href="forgot-password.html">Xóa loại sản phẩm</a>-->
                        <div class="collapse-divider"></div>
                    </div>
                </div>
            </li>

            <div class="sidebar-heading">
                Quản lí hệ thống
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages02"
                    aria-expanded="true" aria-controls="collapsePages02">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Quản trị</span>
                </a>
                <div id="collapsePages02" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Tác vụ</h6>
                        <a class="collapse-item" href="<?=href('nguoidung','layds')?>">Danh sách quản trị viên</a>
                        <a class="collapse-item" href="<?=href('nguoidung','them')?>">Thêm quản trị viên</a>
                        <!--<a class="collapse-item" href="index.php?controller=nguoidung&action=them">Sửa quản trị viên</a>
                        <a class="collapse-item" href="forgot-password.html">Xóa quản trị viên</a>-->
                        <div class="collapse-divider"></div>
                    </div>
                </div>
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages03"
                    aria-expanded="true" aria-controls="collapsePages03">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Phân quyền</span>
                </a>
                <div id="collapsePages03" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Tác vụ</h6>
                        <a class="collapse-item" href="login.html">Cấp quyền</a>
                        <div class="collapse-divider"></div>
                    </div>
                </div>
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages04"
                    aria-expanded="true" aria-controls="collapsePages04">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Nhóm Quản trị</span>
                </a>
                <div id="collapsePages04" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Tác vụ</h6>
                        <a class="collapse-item" href="login.html">Thêm nhóm quản trị viên</a>
                        <a class="collapse-item" href="<?=href('nhomquantri')?>">Sửa nhóm quản trị viên</a>
                        <a class="collapse-item" href="forgot-password.html">Xóa nhóm quản trị viên</a>
                        <div class="collapse-divider"></div>
                    </div>
                </div>
            </li>

            <div class="sidebar-heading">
                Quản lí bán hàng
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages05"
                    aria-expanded="true" aria-controls="collapsePages05">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Đơn hàng</span>
                </a>
                <div id="collapsePages05" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Tác vụ</h6>
                        <a class="collapse-item" href="login.html">Cập nhật đơn hàng</a>
                        <div class="collapse-divider"></div>
                    </div>
                </div>
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages06"
                    aria-expanded="true" aria-controls="collapsePages06">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Khách hàng</span>
                </a>
                <div id="collapsePages06" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Tác vụ</h6>
                        <a class="collapse-item" href="login.html">Cập nhật khách hàng</a>
                        <div class="collapse-divider"></div>
                    </div>
                </div>
            </li>

            
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

            <!-- Sidebar Message -->
            <div class="sidebar-card">
                <img class="sidebar-card-illustration mb-2" src="template/img/undraw_rocket.svg" alt="">
                <p class="text-center mb-2"><strong>Demo MVC</strong> is packed with premium features, components, and more!</p>
                <a class="btn btn-success btn-sm" href="https://startbootstrap.com/theme/sb-admin-pro">Đăng kí ngay</a>
            </div>

        </ul>