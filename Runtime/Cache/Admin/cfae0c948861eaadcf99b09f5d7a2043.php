<?php if (!defined('THINK_PATH')) exit();?>	<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>首页 - 素材火 Admin</title>

	<meta name="description" content="overview &amp; stats" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<!-- basic styles -->

	<link href="/tshop/Public/Admin/Ace/assets/css/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="/tshop/Public/Admin/Ace/assets/css/font-awesome.min.css" />

	<!--[if IE 7]>
	<link rel="stylesheet" href="/tshop/Public/Admin/Ace/assets/css/font-awesome-ie7.min.css" />
	<![endif]-->

	<!-- page specific plugin styles -->

	<!-- fonts -->

	<link rel="stylesheet" href="/tshop/Public/Admin/Ace/assets/css/ace-fonts.css" />

	<!-- ace styles -->

	<link rel="stylesheet" href="/tshop/Public/Admin/Ace/assets/css/ace.min.css" />
	<link rel="stylesheet" href="/tshop/Public/Admin/Ace/assets/css/ace-rtl.min.css" />
	<link rel="stylesheet" href="/tshop/Public/Admin/Ace/assets/css/ace-skins.min.css" />
	<style>
			#iframe{border:solid red 1px; width: 100%; height: 1000px; padding-bottom: 50px; background: #fff;}
			*{font-size: 14px; font-family: 微软雅黑;}
		</style>

	<!--[if lte IE 8]>
	<link rel="stylesheet" href="/tshop/Public/Admin/Ace/assets/css/ace-ie.min.css" />
	<![endif]-->

	<!-- inline styles related to this page -->

	<!-- ace settings handler -->

	<script src="/tshop/Public/Admin/Ace/assets/js/ace-extra.min.js"></script>
	<script src="/tshop/Public/Admin/Ace/assets/js/jquery-2.0.3.min.js"></script>

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

	<!--[if lt IE 9]>
	<script src="/tshop/Public/Admin/Ace/assets/js/html5shiv.js"></script>
	<script src="/tshop/Public/Admin/Ace/assets/js/respond.min.js"></script>
	<![endif]-->


		<script src="/tshop/Public/Admin/Ace/assets/js/bootstrap.min.js"></script>
	<script src="/tshop/Public/Admin/js/bootbox.js"></script>

</head>

<body>
	<style>body{background: #fff;}</style>

	<!-- 位置区域 -->	
	<div class="breadcrumbs" id="breadcrumbs">
		<script type="text/javascript">try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}</script>

		<ul class="breadcrumb">
			<li> <i class="icon-home home-icon"></i>
				<a href="#">Home</a>
			</li>

			<li>
				<a href="#">Tables</a>
			</li>
			<li class="active">Simple &amp; Dynamic</li>
		</ul>
		<!-- .breadcrumb -->	

		<div class="nav-search" id="nav-search">
			<form class="form-search">
				<span class="input-icon">
					<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" /> <i class="icon-search nav-search-icon"></i>
				</span>
			</form>
		</div>
		<!-- #nav-search -->	
	</div>

	<!-- 位置区域结束 -->	

	

<link rel="stylesheet" type="text/css" href="/tshop/Public/Admin/Plugin/uploadify/css/uploadify.css">
<script type="text/javascript" src="/tshop/Public/Admin/Plugin/uploadify/js/jquery.uploadify.js"></script>
<div class="page-content">
	<h1>uploadify</h1>
	

	<div id="fileQueue"></div>
<input type="file" name="uploadify" id="uploadify" />
<p>
        <a href="javascript:$('#uploadify').uploadify('upload', '*')">开始</a>
        <a href="javascript:$('#uploadify').uploadify('cancel', '*')">取消</a>
</p>
    <script>
    //设置一个时间戳
    <?php echo $timestamp = time();?> 
    $(function(){
        $("#uploadify").uploadify({
            'formData' :{
                'timestamp' : '<?php echo $timestamp;?>', //输入设置好的时间戳
                'token' : '<?php echo md5('unique_salt' . $timestamp);?>' //设置一个md5字符串
            },
            'auto': true, //是否自动上传
            'debug': false, //是否开启浏览器调试
            'buttonText': '上传音乐', //上传按钮的文字
            'fileTypeExts': '*.jpg;*.gif;*.bmp;*.png;*.jpeg;*.mp3', //允许的图片类型
            'fileSizeLimit': '10000MB', //单张图片的最大值
            'multi': false, //时运允许多张图片一起上传
            'removeCompleted' : false,
            'swf' : '/tshop/Public/Admin/Plugin/uploadify/js/uploadify.swf',
            'uploader' : '<?php echo U('Test/shangc123huan');?>',
            'onUploadSuccess' : function(file,data,response){
                    var obj = jQuery.parseJSON(data);
                    // var obj = eval('(' + data + ')');
                    console.log(obj);
                    // Object { code: 200, savepath: "uploads/1482931430_5080.jpg" }
                    if(obj.code==200){
                        alert('上传成功啦');
                        var str= '<img src="'+obj.savepath+'">';
                        $("#con").append(str);
                        $(".uploadify-queue-item").hide();
                        $(".suc").html('上传成功');
                        //删除进度条
                        $('#uploadify').uploadify('cancel', 'SWFUpload_0_0');

                    }else{
                        alert(obj.errorMsg);
                    }
                }

        });
    });

    </script>

    <div class="" id="con"></div>
    <span class="suc"></span>
</div>