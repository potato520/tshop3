<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>行家添加-有点</title>
<link rel="stylesheet" type="text/css" href="/tshop/Public/Admin/css/css.css" />
<script type="text/javascript" src="/tshop/Public/Admin/js/jquery.min.js"></script>

  <!-- 时间控件star -->
  <script src="/tshop/Public/Admin/laydate/laydate.js"></script>
  <!-- 时间控件end -->

  <script type="text/javascript" charset="utf-8" src="/tshop/Public/Admin/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="/tshop/Public/Admin/ueditor/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="/tshop/Public/Admin/ueditor/lang/zh-cn/zh-cn.js"></script>

</head>
<body>
	<div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="/tshop/Public/Admin/img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">公共管理</a>&nbsp;-</span>&nbsp;内容添加
			</div>
		</div>
		<div class="page ">
			<!-- 上传广告页面样式 -->
			<div class="banneradd bor">
				<div class="baTopNo">
					<span>内容添加</span>
				</div>
  	  <form action="/tshop/index.php/Admin/Course/mod" enctype="multipart/form-data"  method="post">
  	  			<input type="hidden" name="id" value="<?php echo ($data["id"]); ?>" />
				<div class="baBody">

					<div class="bbD">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;标题：　　<input type="text"
							class="input7" name="title" value="<?php echo ($data["title"]); ?>" />
					</div>
					<div class="bbD">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;摘要：　　<textarea name="summary"   class="input8"><?php echo ($data["summary"]); ?></textarea>
					</div>
					<div class="bbD">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;来源：　　<input type="text"
							class="input5" name="infoFrom" value="<?php echo ($data["infoFrom"]); ?>" />
					</div>

					<div class="bbD">
						<div id="localImag" style="width:600px; height:100px;">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;缩略图：　　<input type="file"
							name="thumb" id="doc"  onchange="javascript:setImagePreview();" />
							<?php if($data['thumb'] != '' ): ?><img src="/tshop/<?php echo ($data["thumb"]); ?>" alt="" id="preview" style="float:right;" width="100" height="100" />
							<?php else: ?>
								<img src="" alt="没有图片" id="preview" style="float:right;" /><?php endif; ?>
						</div>
							<!-- <img src="http://127.0.0.1/video/Public/thumb/2016-06-23/576abda022cf8.jpg" alt="" width="70" /> -->
					</div>
					<div class="clear"></div>



					<div class="bbD">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作者：　　<input type="text"
						class="input5" name="author" value="<?php echo ($data["author"]); ?>" />
					</div>

					<div class="bbD">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布日期：<input class="input5"  id="demo" name="published_date" onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" value="<?php echo ($data["published_date"]); ?>">
						<span style="color:orange;font-size:12px;">*点击input自定义时间</span>
					</div>

 <script>
;!function(){

//laydate.skin('molv');

laydate({
   elem: '#demo'
})

}();
</script>

					<div class="bbD">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;所属栏目：<select name="category_id"  class="input3" >
							<?php if($finData['parent_id'] == 0): ?><option value="0">顶级栏目</option><?php endif; ?>
							<?php if(is_array($cate)): $i = 0; $__LIST__ = $cate;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ca): $mod = ($i % 2 );++$i;?><option value="<?php echo ($ca["id"]); ?>"
									<?php if($data['category_id'] == $ca['id']): ?>selected="selected"<?php endif; ?>
								>
									<?php echo (str_repeat("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;",$ca["level"])); echo ($ca["name"]); ?>
								</option><?php endforeach; endif; else: echo "" ;endif; ?>
						</select>
　　　
						置顶：<input type="radio" name="top" value="1" 
							<?php if($data['top'] == 1): ?>checked="checked"<?php endif; ?>
						 />　
						不置顶：<input type="radio" name="top" value="0" 
							<?php if($data['top'] == 0): ?>checked="checked"<?php endif; ?>
						 />

						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;文章状态：<select name="status"  class="input3" >
							<option value="1" 
								<?php if($data['status'] == 1): ?>selected="selected"<?php endif; ?>
							>显示</option>
							<option value="2"
								<?php if($data['status'] == 2): ?>selected="selected"<?php endif; ?>
							>草稿</option>
							<option value="3"
								<?php if($data['status'] == 3): ?>selected="selected"<?php endif; ?>
							>隐藏</option>
						</select>
					</div>	


					<div class="bbD">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;内容：　　
						<textarea name="content" id="content" style="width:1000px; height:500px;margin-left:107px;"><?php echo ($data["content"]); ?></textarea>
					</div>

<!-- 百度编辑器 star -->
    <script>
    var ue = UE.getEditor('content');

    </script>
   <!-- 百度编辑器end -->
					<div class="bbD">
						<p class="bbDP">
							<button class="btn_ok btn_yes" href="#">提交</button>
							<a class="btn_ok btn_no" href="#">取消</a>
						</p>
					</div>

				</div>
			</form>
			</div>
			<!-- 上传广告页面样式end -->
		</div>
	</div>

<script>
	
	$(function(){
		$(".btn_yes").click(function(){
			if($('input[name="name"]').val()==""){
				alert("标题不能为空");return false;
			}
		
		})
			
	})
</script>
<script type="text/javascript" src="/tshop/Public/Admin/js/showPic.js"></script>

</body>
</html>