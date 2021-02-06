
<body>
        <div class="container">
            <div class="row">
                <div class="col-12">
                <h3>Danh sách người dùng (<?=count($users)?>)</h3>
                        <table class="table table-striped table-inverse ">
                            <thead class="thead-inverse">
                                <tr>
                                    <th>Hình đại diện</th>
                                    <th>Tài khoản</th>
                                    <th>Tên đăng nhập</th>
                                    <th>Trạng thái</th>
                                    <th>Tác vụ</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php 
                                foreach($users as $user => $value)
                                {
                                ?>
                                    <tr>
                                        <td scope="row"><img src="<?=$value->avatar?$value->avatar:'images/no-image.png'?>" width="50" /></td>
                                        <td><?=$value->tenqt?></td>
                                        <td><?=$value->tendangnhap?></td>
                                        <td>                                        
                                            <?=$value->trangthai==1?'<span class="badge badge-success">Kích hoạt</span>':'<span class="badge badge-dark">Khoá</span>'?>                                        
                                        </td>
                                        <td>
                                        <!--<a  class="btn btn-sm btn-primary" href="index.php?page=sua?user=" role="button">-->
                                        <a  class="btn btn-sm btn-primary" href="<?=href('nguoidung','sua',['user'=>$value->maqt])?>" role="button">
                                        <i class="fa far fa-edit" aria-hidden="true"></i> Sửa</a>
                                        <a  class="btn btn-sm btn-danger"  role="button" onclick="checkxoa();">
                                        <i class="fa fa-trash" aria-hidden="true"></i> Xoá</a></td>
                                    </tr>
                                <?php } ?>
                                </tbody>
                        </table>
                </div>
            </div>
        </div>
</body>

</html>