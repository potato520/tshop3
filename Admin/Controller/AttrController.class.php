<?php
/**
 * @Author: potato520
 * @Date:   2016-07-22 14:39:22
 * @Last Modified by:   potato520
 * @Last Modified time: 2016-07-24 21:05:40
 */
namespace Admin\Controller;
use Think\Controller;

class AttrController extends Controller 
{
	#属性列表
	public function showlist()
	{

		#获取所有的类型数据，给下拉框搜索使用
		$type_data = D("type")->select();
		$this->assign("type_data", $type_data);

		#获取属性列表数据
		$sql = "SELECT * FROM attr AS a  LEFT JOIN type AS t ON a.type_id=t.id";
		$data = D("attr")->query($sql);
		$this->assign("attrInfo", $data);
		$this->display();
	}

	#属性添加
	public function add()
	{
		if(IS_POST){
			$info = I("post.");
			if(D("attr")->add($info)){
				$this->success("添加成功", U("showlist"));die;
			}else{
				$this->error("添加失败", U("add"));die;
			}


			return;
		}


		#获取商品类型属性
		$typedata = D("type")->select();
		$this->assign("typedata", $typedata);
		$this->display();
		
	}


	#获取ajax数据
	public function getattrtype()
	{
		$type_id = I("post.type_id");
		$sql = "SELECT a.*,t.type_name FROM attr AS a  LEFT JOIN type AS t ON a.type_id=t.id
		 WHERE t.id={$type_id}";
		$data = D("attr")->query($sql);
		$this->assign("attrInfo", $data);

		#返回ajax数据
		$this->ajaxReturn($data);
	}

	// 根据类型id 获取对应的属性信息
	public function getAttrById()
	{
		$type_id = I("post.type_id");

		$sql = "SELECT a.*,t.type_name FROM attr AS a LEFT JOIN type AS t ON a.type_id=t.id WHERE t.id={$type_id}";

		$data = D("attr")->query($sql);
		$this->ajaxReturn($data);

	}

}