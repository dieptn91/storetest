
<body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                <h3>Danh sách sản phẩm (<?=count($sp)?>)</h3>
                        <table class="table table-striped table-inverse ">
                            <thead class="thead-inverse">
                                <tr>
                                    <th>Hình ảnh</th>
                                    <th>Tên sản phẩm</th>
                                    <th>Mô tả</th>
                                    <th>Đơn giá</th>
                                    <th>Số lượng</th>
                                    <th>Loại sản phẩm</th>
                                    <th>Nhà cung cấp</th>
                                    <th>Tác vụ</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php 
                                foreach($sp as $sp => $value)
                                {
                                ?>
                                    <tr>
                                        <td scope="row"><img src="<?=$value->hinhanh??'images/no-image.png'?>" width="50" /></td>
                                        <td><?=$value->tensp?></td>
                                        <td><?=$value->mota?></td>
                                        <td><?=number_format($value->gia)?> VND</td>
                                        <td><?=number_format($value->soluong)?></td>
                                        <td><?=$value->tenloai?></td>
                                        <td><?=$value->tenncc?></td>
                                        <td>
                                        <!--<a  class="btn btn-sm btn-primary" href="index.php?page=sua?user=" role="button">-->
                                        <a  class="btn btn-sm btn-primary" href="<?=href('sanpham','sua',['masp'=>$value->masp])?>" role="button">
                                        <i class="fa far fa-edit" aria-hidden="true"></i> Sửa</a>
                                        <a  class="btn btn-sm btn-danger"  role="button" onclick="checkxoasp()">
                                        <i class="fa fa-trash" aria-hidden="true"></i> Xoá</a></td>
                                    </tr>
                                <?php } ?>
                                </tbody>
                        </table>
                </div>
            </div>
        </div>
</body>
