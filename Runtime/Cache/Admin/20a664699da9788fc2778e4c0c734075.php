<?php if (!defined('THINK_PATH')) exit();?>
	<!DOCTYPE html>
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

	

	
	

	<div class="page-content">
	<div class="row">
	<div class="col-xs-12">

	<div class="widget-main no-padding">
		<!-- PAGE CONTENT BEGINS -->	
		<form action="/tshop/index.php/Admin/Type/add" enctype="multipart/form-data"  method="post" class="form-horizontal" role="form">

			<div class="form-group">
				

				<div class="form-group">
					<label class="col-sm-1 control-label no-padding-right" for="form-field-1">商品类型</label>

					<div class="col-sm-7">
						<input type="text"  id="form-field-1" placeholder="商品类型" class="col-xs-10 col-sm-5" name="type_name" />	
					</div>
				</div>

				<div class="space-4"></div>

				

				<div class="clearfix form-actions">
					<div class="col-md-offset-1 col-md-8">
						<button class="btn btn-info" type="button"> <i class="icon-ok bigger-110"></i>
							提交
						</button>
						&nbsp; &nbsp; &nbsp;
						<button class="btn" type="reset"> <i class="icon-undo bigger-110"></i>
							清空
						</button>
					</div>
				</div>

			</form>
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