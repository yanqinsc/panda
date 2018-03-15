<?php
namespace app\home\controller;

use think\Request;
use think\Controller;

class Index extends Controller
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
