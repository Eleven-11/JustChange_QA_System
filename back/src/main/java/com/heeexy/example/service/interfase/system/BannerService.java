package com.heeexy.example.service.interfase.system;

import com.alibaba.fastjson.JSONObject;

/**
 * @Author Lingling00
 * @Description 后台滚动栏相关方法
 * @DATE 10/11/2019 14:12
 **/
public interface BannerService {
    /**
     * @description 获取滚动栏图片信息
     * @param
     * @return
     **/
    JSONObject listAll(JSONObject jsonObject);

    /**
     * @description 新增滚动栏图片信息
     * @param
     * @return
     **/
    JSONObject addBanner(JSONObject jsonObject);
    /**
     * @description 逻辑删除广告栏图片
     * @param
     * @return
     **/
    JSONObject updateDelBanner(JSONObject jsonObject);
    /**
     * @description 更新广告栏图片信息
     * @param
     * @return
     **/
    JSONObject updateBannerInfo(JSONObject jsonObject);

    /**
     * @description 对广告栏图片进行排序
     * @param jsonObject
     * @return
     **/
    JSONObject sortBanner(JSONObject jsonObject);
}
