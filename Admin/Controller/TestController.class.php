<?php
/**
 * @Author [ Wake1 ]
 * @Email [ 573358951@qq.com ]
 * @Last Modified time: 2016-07-01 19:16:20
 */

namespace Admin\Controller;
use \Think\Controller;

class TestController extends BaseController
{
    //测试
    public function shangchuan()
    {
        if(IS_POST){
            // Define a destination
            $targetFolder = 'Public/thumb/'; // Relative to the root

            $verifyToken = md5('unique_salt' . $_POST['timestamp']);

            if (!empty($_FILES) && $_POST['token'] == $verifyToken) {

                $rename_rules = 'time';
                $tempFile = $_FILES['Filedata']['tmp_name'];
                //$targetPath = $_SERVER['DOCUMENT_ROOT'] . $targetFolder;
                $targetFile = rtrim($targetFolder,'/') . '/' . time().'_'.mt_rand(1000,9999);

                // Validate the file type
                $fileTypes = array('mp3','jpg','mp4'); // File extensions
                $fileParts = pathinfo($_FILES['Filedata']['name']);
                if (in_array($fileParts['extension'],$fileTypes)) {
                    move_uploaded_file($tempFile,$targetFile.'.'.$fileParts['extension']);
                    $savepath = $targetFile.'.'.$fileParts['extension'];
                    echo json_encode(array('code'=>200,'savepath'=>$savepath));exit();
                } else {
                    echo json_encode(array('code'=>201,'savepath'=>$无效的文件类型。));exit();
                }
                // echo json_encode($data);
            }
        }else{
            $this->display();
        }
    }
}