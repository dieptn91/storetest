
<body>
        <div class="container">
            <div class="row">
                <div class="col-12">
                <h3>Danh sách loại sản phẩm (<?=count($loaisp)?>)</h3>
                        <table class="table table-striped table-inverse ">
                            <thead class="thead-inverse">
                                <tr>
                                    <th>Tên loại sản phẩm</th>
                                    <th>Danh mục</th>
                                    <th>Trạng thái</th>
                                    <th>Tác vụ</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php 
                                foreach($loaisp as $loaisp => $value)
                                {
                                ?>
                                    <tr>
                                        <td><?=$value->tenloai?></td>
                                        <td><?php
                                        foreach($macha as $key => $valuemc){
                                            if($valuemc->maloai == $value->macha){echo $valuemc->tenloai;break;};
                                        }
                                        ?>
                                        </td>
                                         <td>                                        
                                            <?=$value->trangthai==1?'<span class="badge badge-success">Kích hoạt</span>':'<span class="badge badge-dark">Khoá</span>'?>                                        
                                        </td>
                                        <td>
                                        <!--<a  class="btn btn-sm btn-primary" href="index.php?page=sua?user=" role="button">-->
                                        <a  class="btn btn-sm btn-primary" href="<?=href('loaisanpham','sua')
                                        //$masp=$value->masp;
                                       ?>" role="button">
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
