<?php
namespace app\home\controller;

class Index extends Base
{
    /**
     * 目录页
     * @param $category
     * @return \think\response\View
     */
    public function contents($category='home')
    {
        $this->assign('nav_item', $category);
        return view('index');
    }

    /**
     * 内容页
     * @param $id
     * @return \think\response\View
     */
    public function article($id)
    {
        return view('article');
    }
}
