package com.heeexy.example.service.impl.system;

import com.alibaba.fastjson.JSONObject;
import com.heeexy.example.dao.BannerMapper;
import com.heeexy.example.service.interfase.system.BannerService;
import com.heeexy.example.util.CommonUtil;
import com.heeexy.example.util.model.Banner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @Author Lingling00
 * @Description 后台滚动栏service方法实现类
 * @DATE 10/11/2019 14:13
 **/
@Service
public class BannerServiceImpl implements BannerService {
    @Autowired
    private BannerMapper bannerMapper;

    /**
     * 获取滚动栏列表
     * @param jsonObject
     * @return
     */
    @Override
    public JSONObject listAll(JSONObject jsonObject) {
        CommonUtil.fillPageParam(jsonObject);
        int count = bannerMapper.countAll(jsonObject);
        List<JSONObject> list = bannerMapper.listAll(jsonObject);
        return CommonUtil.successPage(jsonObject, list, count);
    }

    /**
     * 添加滚动栏图片信息
     * @param jsonObject
     * @return
     */
    @Override
    public JSONObject addBanner(JSONObject jsonObject) {
        Banner banner = fillBanner(jsonObject);
        bannerMapper.insertSelective(banner);
        Integer bannerId = banner.getId();
        return CommonUtil.successJson(bannerId);
    }

    /**
     * 填充banner
     * @param jsonObject
     * @return
     */
    private Banner fillBanner(JSONObject jsonObject) {
        Banner banner = new Banner();
        banner.setId((Integer) jsonObject.get("bannerId"));
        banner.setBannerName(jsonObject.getString("bannerName"));
        banner.setBannerLink(jsonObject.getString("bannerLink"));
        banner.setBannerPicture(jsonObject.getString("bannerPicture"));
        return banner;
    }

    /**
     * 删除滚动栏
     * @param jsonObject
     * @return
     */
    @Override
    public JSONObject updateDelBanner(JSONObject jsonObject) {
        bannerMapper.updateDelBanner(jsonObject);
        return CommonUtil.successJson(jsonObject.get("bannerId"));
    }

    /**
     * 修改滚动栏图片信息
     * @param jsonObject
     * @return
     */
    @Override
    public JSONObject updateBannerInfo(JSONObject jsonObject) {
        Banner banner = fillBanner(jsonObject);
        bannerMapper.updateByPrimaryKeySelective(banner);
        Integer bannerId = (Integer) jsonObject.get("bannerId");
        return CommonUtil.successJson(bannerId);
    }

    /**
     * 对滚动栏进行排序
     * @param jsonObject
     * @return
     */
    @Override
    public JSONObject sortBanner(JSONObject jsonObject) {
        SimpleDateFormat sDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        if(jsonObject.get("formerSortTime").toString() .equals(jsonObject.get("laterSortTime").toString())) {
            try {
                Date laterSortTime = sDateFormat.parse(jsonObject.get("laterSortTime").toString());
                long time = 1 * 1000;
                Date temp = new Date(laterSortTime.getTime() + time);
                jsonObject.put("laterSortTime", temp);

            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        bannerMapper.sortBanner(jsonObject);
        return CommonUtil.successJson();

    }
}
