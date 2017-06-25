<?php if (!defined('THINK_PATH')) exit();?>




<!DOCTYPE html>
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



<script>

	// 切换所属类型的属性
	function searchAttr(type_id){
		var url = "/index.php/Admin/Attr/getattrtype";

		// 请求地址和传递的参数
		$.post(url,{"type_id": type_id},
			function(data){
				console.log(data);

				// 先删除列表页数据
				$(".table tr:gt(0)").remove();

				var html = "";
				// 拼装数据

				for(var i=0; i<data.length; i++){

					 html += '<tr>\
						<td>'+data[i].id+'</td>\
						<td>'+data[i].attr_name+'</td>\
						<td>'+data[i].type_name+'</td>\
						<td>'+(data[i].attr_sel ==1 ? '多选': "唯一")+'</td>\
						<td>'+(data[i].attr_write ==1 ? "列表选择" : "手动录入")+'</td>\
						<td>'+data[i].attr_vals+'</td>\
						<td>操作</td>\
					</tr>';
				}
				$(".table").append(html);

			},"json");

	}

</script>

<!-- 内容区域 -->
<div class="page-content">
	<div class="row">
		<div class="col-xs-12">

			<!-- 通过onchange事件调用请求，获取对应类型的数据 -->
			<select name="goods_type" onchange="searchAttr(this.value)">
				<option value="">所有商品类型</option>
				<?php if(is_array($type_data)): $i = 0; $__LIST__ = $type_data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><option value="<?php echo ($v["id"]); ?>"><?php echo ($v["type_name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
			</select>

			<div class="table-responsive">
				<table id="sample-table-1" class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>属性id</th>
							<th>属性名称</th>
							<th>所属类型</th>
							<th>选择是否可选</th>
							<th class="hidden-480">属性录入方式</th>
							<th>列表可选值</th>
							<th>操作</th>
						</tr>
					</thead>

					<tbody>
						<?php if(is_array($attrInfo)): $i = 0; $__LIST__ = $attrInfo;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
								<td><?php echo ($vo["id"]); ?></td>
								<td><?php echo ($vo["attr_name"]); ?></td>
								<td><?php echo ($vo["type_name"]); ?></td>
								<td><?php echo ($vo['attr_sel'] ? "多选" : "唯一"); ?></td>
								<td><?php echo ($vo['attr_write'] ? "列表选择" : "手动录入"); ?></td>
								<td><?php echo ($vo["attr_vals"]); ?></td>
								<td>操作</td>

							</tr><?php endforeach; endif; else: echo "" ;endif; ?>

					</tbody>
				</table>
			</div>
			<!-- /.table-responsive -->
		</div>
		<!-- /span -->
	</div>
</div>
<ul class="pagination">
	<li class="disabled">
		<a href="#"> <i class="icon-double-angle-left"></i>
		</a>
	</li>
	<?php echo ($page); ?>
	<li>
		<a href="#"> <i class="icon-double-angle-right"></i>
		</a>
	</li>
</ul>

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
			window.location.href="/index.php/Admin/Attr/mod/id/" + id;
		});
	</script>