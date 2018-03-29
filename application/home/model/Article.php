<?php
/**
 * Created by PhpStorm.
 * User: YamTsin
 * Date: 2018/3/28
 * Time: 20:58
 */

namespace app\home\model;


use think\Model;

class Article extends Model
{
    /**
     * 查找某个分类下的所有文章
     * @param $category_id
     * @param $paginate_number
     * @return \think\Paginator
     * @throws \think\exception\DbException
     */
    public static function getListByCategory($category_id, $paginate_number)
    {
        // 首页展示所有分类最新文章
        if ($category_id == 1) {
            return self::alias('a')
                ->join('category c', 'a.category_id=c.id', 'left')
                ->field(['a.id', 'a.title', 'a.thumb', 'a.author', 'a.summary', 'a.views', 'a.add_time', 'c.name' => 'category'])
                ->order('a.id desc')
                ->paginate($paginate_number);
        } else {
            return self::alias('a')
                ->join('category c', 'a.category_id=c.id', 'left')
                ->where(['a.category_id' => $category_id])
                ->field(['a.id', 'a.title', 'a.thumb', 'a.author', 'a.summary', 'a.views', 'a.add_time', 'c.name' => 'category'])
                ->order('a.id desc')
                ->paginate($paginate_number);
        }
    }

    /**
     * 根据文章ID获取文章信息
     * @param $id
     * @return array|false|\PDOStatement|string|Model
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public static function getArticle($id)
    {
        return self::alias('a')
            ->join('category c', 'a.category_id=c.id', 'left')
            ->join('article_body b', 'a.id=b.aid', 'left')
            ->where(['a.id' => $id])
            ->field(['a.id', 'a.title', 'a.thumb', 'a.author', 'a.summary', 'a.views', 'a.comments', 'b.body', 'a.add_time', 'c.name' => 'category'])
            ->find();
    }


    public static function getHotList()
    {
        return self::field(['id', 'title'])->order(['comments' => 'desc', 'views' => 'desc'])->limit(6)->select();
    }
}