<?php
/**
 * @Author: potato520
 * @Date:   2016-07-22 11:23:00
 * @Last Modified by:   potato520
 * @Last Modified time: 2016-07-22 11:43:18
 */
namespace Admin\Controller;
use \Think\Controller;

#商品类型控制器
class TypeController extends Controller
{
	#商品类型列表
	public function showlist()
	{

		$this->data = D("type")->select();
		$this->display();
	}

	#添加商品类型
	public function add()
	{
		if(IS_POST){
			$data = I("post.");
			if(D("type")->add($data)){
				$this->success("添加成功", U("Type/showlist"), 2);die;
			}else{
				$this->success("添加失败");die;
			}
		}
		$this->display();
	}
}
