<?php
namespace app\wechat\controller;

use think\Request;
use think\Controller;

class Index extends Controller
{
    /**
     * 微信公众平台第三方程序入口
     * @param Request $request
     * @return mixed
     */
    public function index(Request $request)
    {
        $nonce = $request->get('nonce');
        $token = '你的微信公众平台token';
        $timestamp = $request->get('timestamp');
        $echoString = $request->get('echostr');
        $signature = $request->get('signature');

        $array = [$nonce, $timestamp, $token];
        sort($array, SORT_STRING);
        $str = sha1( implode( $array ) );
        if($str == $signature && $echoString) {
            return $echoString;
        }

    }

    /**
     * 用SHA1算法生成安全签名
     * @param $token $token 票据
     * @param $timestamp $timestamp 时间戳
     * @param $nonce $nonce 随机字符串
     * @param $encrypt_msg $encrypt_msg 密文消息
     * @return array
     */

    public function getSHA1($token, $timestamp, $nonce, $encrypt_msg)
    {
        try {
            $array = array($encrypt_msg, $token, $timestamp, $nonce);
            sort($array, SORT_STRING);
            $str = implode($array);
            return array(ErrorCode::$OK, sha1($str));
        } catch (\Exception $e) {
            return array(ErrorCode::$ComputeSignatureError, null);
        }
    }
}
