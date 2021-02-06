
  <body>
  <?=$thongbao??''?>
      <form class="mx-auto" method="post" enctype="multipart/form-data">
          <div class="form-group">
              <label for="">Tên sản phẩm</label>
              <input type="text" name="tensp" id="" value="<?=($_GET['action']=='sua')?$sp->tensp:''?>"/>
          </div>
          <div class="form-group">
              <label for="">Chi tiết</label>
              <input type="text" name="chitiet" id="" value="<?=($_GET['action']=='sua')?$sp->chitiet:''?>" <?=($_GET['action']=='sua')?'readonly':''?>/>
          </div>
          <div class="form-group">
              <label for="">Mô tả</label>
              <input type="text" name="mota" id="" value="<?=($_GET['action']=='sua')?$sp->mota:''?>" />
          </div>
          <div class="form-group">
              <label for="">Đơn giá</label>
              <input type="text" name="dongia" id="" value="<?=($_GET['action']=='sua')?$sp->gia:''?>" />
          </div>
          <div class="form-group">
              <label for="">Số lượng</label>
              <input type="text" name="soluong" id="" value="<?=($_GET['action']=='sua')?$sp->soluong:''?>" />
          </div>
          <div class="form-group">
              <label for="">Từ khóa</label>
              <input type="text" name="tukhoa" id="" value="<?=($_GET['action']=='sua')?$sp->tukhoa:''?>" />
          </div>
          <div class="form-group">
              <label for="maloai">Loại sản phẩm</label>
              <select name="maloai" id="" >
              <?php
              //var_dump($loaispsvl);exit;
                foreach($loaisps as $loaisps=>$loaispvl){
              ?>  
                    <option value="<?=$loaispvl->maloai??''?>"><?=$loaispvl->tenloai?></option>
                <?php
                }
                ?>
                </select>      
          </div>
          <div class="form-group">
              <label for="mancc">Nhà cung cấp</label>
              <select name="mancc" id="" >
              <?php
              //var_dump($nhomqts);exit;
                foreach($nhaccs as $nhaccs=>$nhaccsvl){
              ?>  
                    <option value="<?=$nhaccsvl->mancc??''?>"><?=$nhaccsvl->tenncc?></option>
                <?php
                }
                ?>
                </select>      
          </div>
          <div class="form-group">
              <label for="">Hình ảnh đại diện</label>

              <span width="50"><?=$sp->hinhanh?></span>
              <input type="file" name="avatar" id="" />
          </div>
          <div class="form-group">
              <label for="">Trạng thái</label>
                            <select name="trangthai" id="status" >  
                                <option value="1">Active</option>
                                <option value="2">Deactive</option>
                            </select>          
          </div>
          <div class="form-group">
              <input type="submit" name="submit" id="" class="btn btn-success"/>
              <a href="<?=href('sanpham')?>" id="" class="btn btn-danger">Back</a>
          </div>
      </form>
  </body>
