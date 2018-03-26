<?php
namespace app\home\controller;

use think\Request;

class Index extends Base
{
    /**
     * 首页
     * @param Request $request
     * @return mixed
     */
    public function index(Request $request)
    {
        return view('index');
    }
}
