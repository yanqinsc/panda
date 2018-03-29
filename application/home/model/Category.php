<?php
/**
 * Created by PhpStorm.
 * User: YamTsin
 * Date: 2018/3/26
 * Time: 22:05
 */

namespace app\home\model;


use think\Model;

class Category extends Model
{
    /**
     * 获取全部分类信息
     * @return false|static[]
     * @throws \think\exception\DbException
     */
    public static function getAll()
    {
        return self::where(['is_nav' => '1'])->select();
    }

    /**
     * 通过简称获取分类信息
     * @param $abbreviation
     * @param null $field
     * @return array|false|\PDOStatement|string|Model
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public static function getInfoByAbbreviation($abbreviation, $field = null)
    {
        if (empty($field)) {
            return self::where(['abbreviation' => $abbreviation])->find();
        } else {
            return self::where(['abbreviation' => $abbreviation])->field($field)->find();
        }

    }
}