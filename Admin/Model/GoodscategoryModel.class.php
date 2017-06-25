<?php
/**
 * @Author: potato520
 * @Date:   2016-07-24 21:43:18
 * @Last Modified by:   potato520
 * @Last Modified time: 2016-07-24 22:54:47
 */

namespace Admin\Model;
use Think\Model;

class GoodscategoryModel extends Model
{
	// 设置数据表名称
	protected $tableName = 'goods_category'; 

	// 完善分类信息(添加分类后处理分类)
	public function _after_insert($data, $options)
	{
		//如果是顶级分类
		if($data['pid'] == 0){
			$cate_path = $data['id'];	//分类路径为当前主键 id
			$cate_level = 0;
		}else{
			//不是顶级分类
			$pinfo = M("goods_category")->find($data['pid']);

			// 全路径= 父级的路径 - 当前主键id
			$cate_path = $pinfo['cate_path'] . "-" . $data['id']; 
			$cate_level = $pinfo['cate_level'] + 1;
		}

		$arr = array(
			"id" => $data['id'],
			"cate_path" => $cate_path,
			"cate_level" => $cate_level
			);
		//进行修改
		M("goods_category")->save($arr);
	}


	// 更新成功后调用的方法
	public function _after_update($data,$options) {
		// 顶级分类  
		if ($data['pid'] == 0) {
			$cate_path = $data['id'];
			$cate_level = 0;
		}else{  //不是顶级分类
			// 父分类的全路径-当前id
			// 获取父分类信息
			$pinfo = M('goods_category')->find($data['pid']);

			$cate_path = $pinfo['cate_path'] . '-' . $data['id'];
			$cate_level = $pinfo['cate_level'] + 1;
		}

		$arr = array(
			"id" =>$data['id'],
			"cate_path" => $cate_path,
			"cate_level" => $cate_level,
			);

		M('goods_category')->save($arr);
	}

}