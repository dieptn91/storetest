
  <body>
  <?=$thongbao??''?>
      <form class="mx-auto" method="post" enctype="multipart/form-data">
          <div class="form-group">
              <label for="">Tên tài khoản</label>
              <input type="text" name="tenqt" id="" value="<?=($_GET['action']=='sua')?$user->tenqt:''?>"/>
          </div>
          <div class="form-group">
              <label for="">Tên đăng nhập</label>
              <input type="text" name="tendangnhap" id="" value="<?=($_GET['action']=='sua')?$user->tendangnhap:''?>" <?=($_GET['action']=='sua')?'readonly':''?>/>
          </div>
          <div class="form-group">
              <label for="">Mật khẩu</label>
              <input type="password" name="matkhau" id="" />
          </div>
          <div class="form-group ">
              <label for="manhom">Mã nhóm</label>
              <select name="manhom" id="" >
              <?php
              //var_dump($nhomqts);exit;
                foreach($nhomqts as $nhomqt=>$value){
              ?>  
                    <option value="<?=$value->manhom??''?>"><?=$value->tennhom?></option>
                <?php
                }
                ?>
                </select>      
          </div>
          <div class="form-group">
              <label for="">Hình đại diện</label>
              <input type="file" name="avatar" id="" accept="image/*" />
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
              <a href="<?=href('nguoidung','layds')?>" id="" class="btn btn-danger">Back</a>
          </div>
      </form>
  </body>
