<?php

namespace app\home\controller;

use app\home\model\Article;
use app\home\model\Category;

class Index extends Base
{
    /**
     * 目录页
     * @param string $category
     * @return \think\response\View
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function contents($category = 'home')
    {

        // 读取文章信息
        $category_id = Category::getInfoByAbbreviation($category, 'id')->id;
        $contents = Article::getListByCategory($category_id, 10);

        $this->assign([
            'nav_item' => $category,
            'contents' => $contents
        ]);

        return view('contents');
    }


    /**
     * 文章内容页
     * @param $id
     * @return \think\response\View
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function article($id)
    {
        $article = Article::getArticle($id);

        $this->assign([
            'article' => $article
        ]);
        return view('article');
    }
}
