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

	

	<div class="page-content">
		<div class="row">
			<div class="col-xs-12">

				<div class="widget-main no-padding">
					<!-- PAGE CONTENT BEGINS -->	
					<form action="/index.php/Admin/Goodscategory/edit" enctype="multipart/form-data"  method="post" class="form-horizontal" role="form" id="form" name="form">

					<input type="hidden" name="id" value="<?php echo ($catById["id"]); ?>">

						<div class="form-group">
							<label class="col-sm-1 control-label no-padding-right" for="form-field-1">分类名称</label>

							<div class="col-sm-7">
								<input type="text"  id="title" placeholder="分类名称" class="col-xs-10 col-sm-5" name="cate_name" value="<?php echo ($catById["cate_name"]); ?>" />	
								<span class="help-inline col-xs-12 col-sm-7">
									<span class="middle">用户组名称，不能为空。</span>
								</span>
							</div>
						</div>

						<div class="space-4"></div>

						<div class="form-group">
							<label class="col-sm-1 control-label no-padding-right" for="form-field-select-1">父级分类</label>

							<div class="col-sm-3">
								<select class="form-control" name="pid" id="form-field-select-1">
									<option value="0">顶级分类</option>
									<?php if(is_array($cateInfo)): $i = 0; $__LIST__ = $cateInfo;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$cat): $mod = ($i % 2 );++$i;?><option value="<?php echo ($cat["id"]); ?>"
										<?php if($cat['id'] == $catById['pid']): ?>selected<?php endif; ?>
										><?php echo (str_repeat("----",$cat["cate_level"])); echo ($cat["cate_name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
								</select>
							</div>
						</div>

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
					message: "商品分类名称不能为空", 
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