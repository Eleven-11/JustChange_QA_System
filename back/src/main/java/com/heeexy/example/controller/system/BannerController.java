package com.heeexy.example.controller.system;

import com.alibaba.fastjson.JSONObject;
import com.heeexy.example.service.interfase.system.BannerService;
import com.heeexy.example.util.CommonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * @Author Lingling00
 * @Description 后台滚动栏相关接口
 * @DATE 10/11/2019 14:10
 **/
@RestController
@RequestMapping("banner")
public class BannerController {
    @Autowired
    private BannerService bannerService;

    /**
     * 获取滚动栏列表
     * @param request
     * @return
     */
    @GetMapping("/list")
    public JSONObject listBanner(HttpServletRequest request) {
        JSONObject listBanner = bannerService.listAll(CommonUtil.request2Json(request));
        return listBanner;
    }

    /**
     * 添加滚动栏
     * @param requestJson
     * @return
     */
    @PostMapping("/addBanner")
    public JSONObject addBanner(@RequestBody JSONObject requestJson) {
        return bannerService.addBanner(requestJson);
    }

    /**
     * 修改滚动栏图片信息
     * @param requestJson
     * @return
     */
    @PostMapping("/updateBanner")
    public JSONObject updateBanner(@RequestBody JSONObject requestJson) {
        return bannerService.updateBannerInfo(requestJson);
    }

    /**
     * 删除滚动栏图片信息
     * @param requestJson
     * @return
     */
    @PostMapping("/deleteBanner")
    public JSONObject updateDelBanner(@RequestBody JSONObject requestJson) {
        return bannerService.updateDelBanner(requestJson);
    }

}
