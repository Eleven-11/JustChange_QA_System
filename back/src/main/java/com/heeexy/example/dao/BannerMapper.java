package com.heeexy.example.dao;

import com.alibaba.fastjson.JSONObject;
import com.heeexy.example.util.model.Banner;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface BannerMapper extends Mapper<Banner> {
    /**
     * 计算总条数
     * @param jsonObject
     * @return
     */
    int countAll(JSONObject jsonObject);

    /**
     * 获取滚动栏列表
     * @param jsonObject
     * @return
     */
    List<JSONObject> listAll(JSONObject jsonObject);

    /**
     * 删除滚动栏图片信息（逻辑删除）
     * @param jsonObject
     * @return
     */
    int updateDelBanner(JSONObject jsonObject);

    /**
     * 对滚动栏进行排序
     * @param jsonObject
     */
    void sortBanner(JSONObject jsonObject);
}