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

	

	<!-- 内容区域 -->	
	<div class="page-content">
		<div class="row">
			<div class="col-xs-12">
		<a href="/index.php/Admin/Goodscategory/add" class="btn btn-info">添加分类</a>

				<div class="table-responsive">
					<table id="sample-table-1" class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th class="center">
									<label>
										<input type="checkbox" class="ace" />	
										<span class="lbl"></span>
									</label>
								</th>
								<th>分类id</th>
								<th>分类名称</th>
								<th class="hidden-480">父分类id</th>

								<th> 
									全路径
								</th>
								<th class="hidden-480">分类登记</th>

								<th>操作</th>
							</tr>
						</thead>

						<tbody>
							<?php if(is_array($cateInfo)): $i = 0; $__LIST__ = $cateInfo;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
									<td class="center">
										<label>
											<input type="checkbox" class="ace" />	
											<span class="lbl"></span>
										</label>
									</td>

									<td>
										<span class="label label-sm label-success"><?php echo ($vo["id"]); ?></span>
									</td>
									<td>
									<?php echo (str_repeat("&nbsp;&nbsp;&nbsp;&nbsp;",$vo["cate_level"])); echo ($vo["cate_name"]); ?>
									</td>
									<td class="hidden-480"><?php echo ($vo["pid"]); ?></td>
									<td><?php echo ($vo["cate_path"]); ?></td>

									<td class="hidden-480">
												<?php echo ($vo["cate_level"]); ?>
									</td>

									<td>
										<div class="visible-md visible-lg hidden-sm hidden-xs btn-group">

											<button class="btn btn-xs btn-info" data="<?php echo ($vo["id"]); ?>"> <i class="icon-edit bigger-120"></i>
											</button>

											<button class="btn btn-xs btn-danger" data="<?php echo ($vo["id"]); ?>">
												<i class="icon-trash bigger-120"></i>
											</button>

										</div>

									</td>
								</tr><?php endforeach; endif; else: echo "" ;endif; ?>

						</tbody>
					</table>
				</div>
				<!-- /.table-responsive -->	
			</div>
			<!-- /span -->	
		</div>
	</div>

	<!-- 全选js -->
	<script>
		$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
						
		});


		//编辑
		$(".btn-info").on("click", function(){
			var id = $(this).attr("data");
			window.location.href="/index.php/Admin/Goodscategory/edit/id/" + id;
		});
	</script>