
  <body>
  <?=$thongbao??''?>
      <form class="mx-auto" method="post" enctype="multipart/form-data">
          <div class="form-group">
              <label for="">Tên loại sản phẩm</label>
              <input type="text" name="tenloai" id="" value="<?=($_GET['action']=='sua')?$loaisp->tenloai:''?>"/>
          </div>
          <div class="form-group">
              <label for="">Từ khóa</label>
              <input type="text" name="tukhoa" id="" value="<?=($_GET['action']=='sua')?$loaisp->tukhoa:''?>" <?=($_GET['action']=='sua')?'readonly':''?>/>
          </div>
          <div class="form-group">
              <label for="manhom">Danh mục</label>
              <select name="macha" id="" >
              <option value="99">Trống</option>
              <?php
              //var_dump($nhomqts);exit;
                foreach($macha as $macha=>$value){
              ?>  
                    <option value="<?=$value->maloai??''?>"><?=$value->tenloai?></option>
                <?php
                }
                ?>
                </select>      
          </div>
          <div class="form-group">
              <label for="">Hình ảnh đại diện</label>
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
              <a href="<?=href('loaisanpham')?>" id="" class="btn btn-danger">Back</a>
          </div>
      </form>
  </body>
