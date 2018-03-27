<?php
namespace app\home\controller;

class Index extends Base
{
    /**
     * 首页
     * @return mixed
     */
    public function index()
    {
        return view('index');
    }

    /**
     * 文章展示页
     * @param $id
     * @return \think\response\View
     */
    public function article($id)
    {
        return view('article');
    }
}
