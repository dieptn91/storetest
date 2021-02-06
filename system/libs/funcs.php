<?php 
//session_start();
function list_user($path)
{
    $data = [];
    //$f = fopen($path,'r') or die('Data error');
    if(file_exists($path))
    {
        $f = fopen($path,'r');
        while(!feof($f))
        {
            $s = trim(fgets($f));
            if($s)
            {
                $infouser = explode('|',$s);
                if(count($infouser)==5)
                {
                    $us = trim($infouser[1]);
                    //add user vao data
                    $data[$us] = [
                        'username'=>$us,
                        'password'=>trim($infouser[2]),
                        'name'=>trim($infouser[3]),
                        'avt'=>trim($infouser[0]),
                        'status'=>trim($infouser[4]),
                    ];
                }
            }    
        }
        fclose($f);
    }
    return $data;
}
function xemmang($ar)
{
    echo '<pre>',print_r($ar),'</pre>';
}
function chuyentrang($url)
{
   header('location: '.$url);exit;
}
function href($controller,$action='index',$data=[]){
    $ext = '';
    foreach($data as $key=>$value){
        $ext .= '&'.$key.'='.$value;
    }
    return BASE_URL.'?controller='.$controller.'&action='.$action.$ext;
}
function islogin()
{
    return isset($_SESSION['status_login']) &&  $_SESSION['status_login'];
}
/**
 * $file: $_FILE['keyname']
 * $folder: nơi lưu trữ
 * $error: lấy thông báo lỗi nếu cần
 * $maxsize: kích thước tối đa cho phép upload, đơn vị mb, mặc định tối đa 2 mb
 * $types: danh sách đuôi file đc phép, mặc định upload hình
 * $filename: tên của file sau khi upload thanh công, mặc định là file_
 * 
 *  array (size=5)
      'name' => string 'Dese.......rt.jpg' (length=10)
      'type' => string 'image/jpeg' (length=10)
      'tmp_name' => string 'C:\wamp64\tmp\php975F.tmp' (length=25)
      'error' => int 0
      'size' => int 845941 bye
 */

 /*@return string
*/
function myupload($file,$oldpath='',$folder,&$error,$maxsize=2,$types=['.jpg','.png','.gif'],$filename='file_')
{
    //kiểm tra tích hợp lệ của dữ liệu
    if(isset($file['tmp_name'],$file['size'],$file['error']) 
        && $file['tmp_name'] && $file['size']>0  && $file['error'] ==0)
    {
        //lam tiếp kích thước file
        $size = $maxsize * 1024*1024;
        if($file['size']<=$size)
        {
            //lam tiep loai file
            //lay duoi file
            $ext = strtolower(substr($file['name'],strrpos($file['name'],'.')));//.jpg
            //kiem tra
            if(in_array($ext,$types))
            {
                //tao duong dan file sau khi upload luu tren server
                $fullpath = $folder.'/'.$filename.time().$ext;
                //upload
                if(move_uploaded_file($file['tmp_name'],$fullpath))
                {
                    $error = 'successed';
                    return $fullpath;
                }else{
                    $error = 'failed';
                    return $oldpath;
                }
            }else{
                $error = 'Chỉ cho phép các định dạng sau: '.implode('|',$types);
                return $oldpath;
            }
        }else{
            $error = 'Kích thước tối đa: '.$maxsize.'MB';
            return $oldpath;
        }
    }else{
        $error = 'Dữ liệu không hợp lệ';
        return $oldpath;
    }
}

function save($path,$data)
{   
    if($data)
    {
        $f = fopen($path,'w+');
        //tao chuoi noi dung can ghi tu cai data
        $content = '';
        foreach($data as $username=>$user)
        {
            $content.=$user['avt'].'|'.$username.'|'.$user['password'].'|'.$user['name'].'|'.$user['status']."\n";
        }
        $content = rtrim($content,"\n");
        fwrite($f,$content);
        fclose($f);
        return true;
    }
    return false;
}
