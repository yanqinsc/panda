<?php
/**
 * Created by PhpStorm.
 * User: YamTsin
 * Date: 2018/3/26
 * Time: 22:02
 */

namespace app\home\controller;


use app\home\model\Category;
use think\Controller;
use think\Request;

class Base extends Controller
{
    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->assign('category', Category::getAll());
    }
}