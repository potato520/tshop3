<?php if (!defined('THINK_PATH')) exit();?>	<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>首页 - 素材火 Admin</title>

	<meta name="description" content="overview &amp; stats" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<!-- basic styles -->

	<link href="/Public/Admin/Ace/assets/css/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="/Public/Admin/Ace/assets/css/font-awesome.min.css" />

	<!--[if IE 7]>
	<link rel="stylesheet" href="/Public/Admin/Ace/assets/css/font-awesome-ie7.min.css" />
	<![endif]-->

	<!-- page specific plugin styles -->

	<!-- fonts -->

	<link rel="stylesheet" href="/Public/Admin/Ace/assets/css/ace-fonts.css" />

	<!-- ace styles -->

	<link rel="stylesheet" href="/Public/Admin/Ace/assets/css/ace.min.css" />
	<link rel="stylesheet" href="/Public/Admin/Ace/assets/css/ace-rtl.min.css" />
	<link rel="stylesheet" href="/Public/Admin/Ace/assets/css/ace-skins.min.css" />
	<style>
			#iframe{border:solid red 1px; width: 100%; height: 1000px; padding-bottom: 50px; background: #fff;}
			*{font-size: 14px; font-family: 微软雅黑;}
		</style>

	<!--[if lte IE 8]>
	<link rel="stylesheet" href="/Public/Admin/Ace/assets/css/ace-ie.min.css" />
	<![endif]-->

	<!-- inline styles related to this page -->

	<!-- ace settings handler -->

	<script src="/Public/Admin/Ace/assets/js/ace-extra.min.js"></script>
	<script src="/Public/Admin/Ace/assets/js/jquery-2.0.3.min.js"></script>

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

	<!--[if lt IE 9]>
	<script src="/Public/Admin/Ace/assets/js/html5shiv.js"></script>
	<script src="/Public/Admin/Ace/assets/js/respond.min.js"></script>
	<![endif]-->


		<script src="/Public/Admin/Ace/assets/js/bootstrap.min.js"></script>
	<script src="/Public/Admin/js/bootbox.js"></script>

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

	

	<!-- 上传图片插件开始 -->	

	<!--[if !IE]>	
	-->
	<script type="text/javascript">
			window.jQuery || document.write("<script src='/Public/Admin/Ace/assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");</script>

	<!-- <![endif]-->	

	<!--[if IE]>	
	<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");</script>
	<![endif]-->	

	<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='/Public/Admin/Ace/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");</script>

	<script src="/Public/Admin/Ace/assets/js/bootstrap.min.js"></script>
	<script src="/Public/Admin/Ace/assets/js/typeahead-bs2.min.js"></script>
	<script src="/Public/Admin/Ace/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
	<script src="/Public/Admin/Ace/assets/js/jquery.ui.touch-punch.min.js"></script>
	<script src="/Public/Admin/Ace/assets/js/chosen.jquery.min.js"></script>
	<script src="/Public/Admin/Ace/assets/js/fuelux/fuelux.spinner.min.js"></script>
	<script src="/Public/Admin/Ace/assets/js/date-time/bootstrap-datepicker.min.js"></script>
	<script src="/Public/Admin/Ace/assets/js/date-time/bootstrap-timepicker.min.js"></script>
	<script src="/Public/Admin/Ace/assets/js/date-time/moment.min.js"></script>
	<script src="/Public/Admin/Ace/assets/js/date-time/daterangepicker.min.js"></script>
	<script src="/Public/Admin/Ace/assets/js/bootstrap-colorpicker.min.js"></script>
	<script src="/Public/Admin/Ace/assets/js/jquery.knob.min.js"></script>
	<script src="/Public/Admin/Ace/assets/js/jquery.autosize.min.js"></script>
	<script src="/Public/Admin/Ace/assets/js/jquery.inputlimiter.1.3.1.min.js"></script>
	<script src="/Public/Admin/Ace/assets/js/jquery.maskedinput.min.js"></script>
	<script src="/Public/Admin/Ace/assets/js/bootstrap-tag.min.js"></script>

	<!-- ace scripts -->	

	<script src="/Public/Admin/Ace/assets/js/ace-elements.min.js"></script>
	<script src="/Public/Admin/Ace/assets/js/ace.min.js"></script>
	<script src="/Public/Admin/Ace/mustache\app\views\assets\scripts\form-elements.js"></script>

	<!-- 上传图片插件结束 -->	

	<div class="page-content">
	<div class="row">
	<div class="col-xs-12">
	<div class="widget-box">
		<div class="widget-header">
			<h4>添加管理员</h4>

		</div>

		<div class="widget-body">
			<div class="widget-main no-padding">
				<!-- PAGE CONTENT BEGINS -->	
				<form action="/index.php/Admin/User/add" enctype="multipart/form-data"  method="post" class="form-horizontal" role="form">
					<br>	

					<div class="form-group">
						<label class="col-sm-4 control-label no-padding-right" for="form-field-select-1">所属用户组</label>

						<div class="col-sm-3">
							<select class="form-control" name="group_id" id="form-field-select-1">
								<option value="0">请选择用户组</option>
								<?php if(is_array($usergroup)): $i = 0; $__LIST__ = $usergroup;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ca): $mod = ($i % 2 );++$i;?><option value="<?php echo ($ca["id"]); ?>">
										<?php echo ($ca["title"]); ?>
									</option><?php endforeach; endif; else: echo "" ;endif; ?>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-4 control-label no-padding-right" for="form-field-0">管理员头像</label>

						<div class="col-sm-3">
							<div class="widget-box">
								<div class="widget-header">
									<h4>上传你的头像</h4>

									<span class="widget-toolbar">
										<a href="#" data-action="collapse"> <i class="icon-chevron-up"></i>
										</a>

										<a href="#" data-action="close"> <i class="icon-remove"></i>
										</a>
									</span>
								</div>

								<div class="widget-body">
									<div class="widget-main">
										<!-- 上传方式1 -->	
										<input type="file" id="id-input-file-2" name="userpic" />	

										<!-- 上传方式2 -->	
										<!-- <input multiple="" type="file" id="id-input-file-3" />	
										<label>
											<input type="checkbox" name="file-format" id="id-file-format" class="ace" />	
											<span class="lbl">清空所有</span>
										</label>
										-->
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-4 control-label no-padding-right" for="form-field-1">管理员名称</label>

						<div class="col-sm-7">
							<input type="text"  id="form-field-1" placeholder="管理员名称" class="col-xs-10 col-sm-5" name="username" />	
						</div>
					</div>

					<div class="space-4"></div>

					<div class="form-group">
						<label class="col-sm-4 control-label no-padding-right" for="form-field-2">密码</label>

						<div class="col-sm-7">
							<input type="password" id="form-field-2" placeholder="密码" class="col-xs-10 col-sm-5"  name="password" />	
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-4 control-label no-padding-right" for="form-field-3">确认密码</label>

						<div class="col-sm-7">
							<input class="col-xs-10 col-sm-5" type="password" id="form-field-3" placeholder="确认密码" name="password_confirm" />	
							<div class="space-2"></div>

						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-4 control-label no-padding-right" for="form-field-3">email地址</label>

						<div class="col-sm-7">
							<input class="col-xs-10 col-sm-5" type="text" id="form-field-3" placeholder="email地址" name="email" />	
							<div class="space-2"></div>

						</div>
					</div>

					<div class="clearfix form-actions">
						<div class="col-md-offset-4 col-md-8">
							<button class="btn btn-info" type="button">
								<i class="icon-ok bigger-110"></i>
								提交
							</button>
							&nbsp; &nbsp; &nbsp;
							<button class="btn" type="reset">
								<i class="icon-undo bigger-110"></i>
								清空
							</button>
						</div>
					</div>

				</form>
			</div>
		</div>
	</div>
	</div>

	</div>

	<script>
	$(function(){
		$('.btn-info').on('click',function(){
		$('form').submit();
	});
	})
</script>