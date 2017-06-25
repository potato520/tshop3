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

	<div class="widget-main no-padding">
		<!-- PAGE CONTENT BEGINS -->	
		<form action="/index.php/Admin/Group/add" enctype="multipart/form-data"  method="post" class="form-horizontal" role="form" id="form" name="form">

			<div class="form-group">
				<label class="col-sm-1 control-label no-padding-right" for="form-field-1">用户组名</label>

				<div class="col-sm-7">
					<input type="text"  id="title" placeholder="用户组名" class="col-xs-10 col-sm-5" name="title" />	
					<span class="help-inline col-xs-12 col-sm-7">
						<span class="middle">用户组名称，不能为空。</span>
					</span>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-1 control-label no-padding-right" for="form-field-2">是否启用</label>
				<div class="control-label no-padding-left col-sm-1">
					<label>
						<input name="status" id="status" checked="checked" class="ace ace-switch ace-switch-2" type="checkbox" />	
						<span class="lbl"></span>
					</label>
				</div>
				<span class="help-inline col-xs-12 col-sm-7">
					<span class="middle">YES，启用；NO，禁用</span>
				</span>
			</div>

			<div class="space-4"></div>

			<div class="space-4"></div>
			<div class="form-group">
				<label class="col-sm-1 control-label no-padding-right" for="form-field-1">权限选择</label>
				<div class="col-sm-9">
					<div class="col-sm-10">
						<?php if(is_array($rule)): $i = 0; $__LIST__ = $rule;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="row">
								<div class="widget-box">
									<div class="widget-header">
										<h4 class="widget-title">
											<label>
												<input name="rules[]" class="ace ace-checkbox-2 father" type="checkbox" value="<?php echo ($v['id']); ?>"/>	
												<span class="lbl"><?php echo ($v['title']); ?></span>
											</label>
										</h4>
										<div class="widget-toolbar">
											<?php if(!empty($v["children"])): ?><a href="#" data-action="collapse"> <i class="ace-icon fa fa-chevron-up"></i>
												</a><?php endif; ?>
										</div>
									</div>
									<?php if(!empty($v["children"])): ?><div class="widget-body">
											<div class="widget-main row">
												<?php if(is_array($v["children"])): $i = 0; $__LIST__ = $v["children"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vv): $mod = ($i % 2 );++$i;?><label class="col-xs-2" style="width:160px;">
														<input name="rules[]" class="ace ace-checkbox-2 children" type="checkbox" value="<?php echo ($vv['id']); ?>"/>	
														<span class="lbl"><?php echo ($vv['title']); ?></span>
													</label>
													<?php if(is_array($vv["children"])): $i = 0; $__LIST__ = $vv["children"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vvv): $mod = ($i % 2 );++$i;?><label class="col-xs-2" style="width:160px;">
															<input name="rules[]" class="ace ace-checkbox-2 children" type="checkbox" value="<?php echo ($vvv['id']); ?>"/>	
															<span class="lbl"><?php echo ($vvv['title']); ?></span>
														</label><?php endforeach; endif; else: echo "" ;endif; endforeach; endif; else: echo "" ;endif; ?>
											</div>
										</div><?php endif; ?>
								</div>
							</div><?php endforeach; endif; else: echo "" ;endif; ?>
					</div>
				</div>
			</div>

			<div class="clearfix form-actions">
				<div class="col-md-offset-1 col-md-8">
					<button class="btn btn-info" type="button"> <i class="icon-ok bigger-110"></i>
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

	<!-- 弹出提示 -->
	<script src="/Public/Admin/Ace/assets/js/bootbox.min.js"></script>

<script type="text/javascript">
		$(".children").click(function(){
			$(this).parent().parent().parent().parent().find(".father").prop("checked", true);
		})
		$(".father").click(function(){
			if(this.checked){
				$(this).parent().parent().parent().parent().find(".children").prop("checked", true);
			}else{
				$(this).parent().parent().parent().parent().find(".children").prop("checked", false);
			}
		})
		$(".btn-info").click(function(){
			var title = $("#title").val();
			if(title==''){
				bootbox.dialog({
					message: "用户组名称不能为空。", 
					buttons: {
						"success" : {
							"label" : "确定",
							"className" : "btn-danger"
						}
					}
				});
				return;
			}
			$("#form").submit();
		})
		</script>