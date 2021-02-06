
<body>
        <div class="container">
            <div class="row">
                <div class="col-12">
                <h3>Danh sách người dùng (<?=count($nhomqts)?>)</h3>
                        <table class="table table-striped table-inverse ">
                            <thead class="thead-inverse">
                                <tr>
                                    <th>Tên nhóm</th>
                                    <th>Mô tả </th>
                                    <th>Trạng thái</th>
                                    <th>Tác vụ</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php 
                                foreach($nhomqts as $nhomqt => $value)
                                {
                                ?>
                                    <tr>
                                        <td><?=$value->tennhom?></td>
                                        <td><?=$value->mota?></td>
                                        <td>                                        
                                            <?=$value->trangthai==1?'<span class="badge badge-success">Kích hoạt</span>':'<span class="badge badge-dark">Khoá</span>'?>                                        
                                        </td>
                                        <td>
                                        <!--<a  class="btn btn-sm btn-primary" href="index.php?page=sua?user=" role="button">-->
                                        <a  class="btn btn-sm btn-primary" href="index.php?page=sua&user=<?=$value->manhom?>" role="button">
                                        <i class="fa fa-pencil-square-o" aria-hidden="true"></i> Sửa</a>
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
