<?php
/**
 * @Author: potato520
 * @Date:   2016-07-24 21:28:56
 * @Last Modified by:   potato520
 * @Last Modified time: 2016-07-24 23:21:33
 */

namespace Admin\Controller;
use \Think\Controller;
class GoodscategoryController extends Controller
{
	// 商品分类列表
	public function showlist()
	{
		// 获取分类信息
		$cateInfo = D('Goodscategory')->order('cate_path')->select();
		// p($cateInfo);
		$this->assign('cateInfo',$cateInfo);
		$this->display();
	}

	// 商品分类添加
	public function add()
	{
		if(IS_POST){
			$cateData = I("post.");
			$cate = D("Goodscategory");
			// 数据入库
			if ($cate->add($cateData)) {

				$this->success("成功",U('showlist'),1);
				exit;
			}else{
				$this->error("失败",U('add'),1);
			}

			return;
		}

		// 获取分类信息
		$cateInfo = D('Goodscategory')->order('cate_path')->select();
		$this->assign('cateInfo',$cateInfo);
		$this->display();
	}

	//分类修改
	public function edit()
	{
		if(IS_POST){
			$info = I("post.");
			$data = D('Goodscategory')->where('pid='.$info['id'])->find();
			
			if(!$data) {

				if(D('Goodscategory')->save($info)) {
					
					$this->success('成功',U('showlist'),1);
				}else{
					$this->error('失败',U('edit',array('cateid'=>$info['id'])),1);
				}
			}
			return;
		}

		$id = I("get.id");
		$catById = D("Goodscategory")->find($id);
		$this->assign('catById',$catById);

		// 获取分类信息
		$cateInfo = D('Goodscategory')->order('cate_path')->select();
		$this->assign('cateInfo',$cateInfo);
		$this->display();
	}

	
	// 通过分类id获取子级分类数据
	public function getCateById () {
		// 获取当前分类id
		$cateid = I('post.cateid');
		//获取所有的子分类数据
		$cateInfo = D('Goodscategory')->where('pid='.$cateid)->select();
		$this->ajaxReturn($cateInfo);
	}
}