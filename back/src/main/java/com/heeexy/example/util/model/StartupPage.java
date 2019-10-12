package com.heeexy.example.util.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "t_startup_page")
public class StartupPage {
    /**
     * 启动页主键
     */
    @Id
    private Integer id;

    /**
     * 页面图片地址
     */
    @Column(name = "startup_page_url")
    private String startupPageUrl;

    /**
     * 排序时间
     */
    @Column(name = "sort_time")
    private Date sortTime;

    /**
     * 是否删除，1是0否 
     */
    @Column(name = "is_del")
    private Boolean isDel;

    /**
     * 获取启动页主键
     *
     * @return id - 启动页主键
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置启动页主键
     *
     * @param id 启动页主键
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取页面图片地址
     *
     * @return startup_page_url - 页面图片地址
     */
    public String getStartupPageUrl() {
        return startupPageUrl;
    }

    /**
     * 设置页面图片地址
     *
     * @param startupPageUrl 页面图片地址
     */
    public void setStartupPageUrl(String startupPageUrl) {
        this.startupPageUrl = startupPageUrl;
    }

    /**
     * 获取排序时间
     *
     * @return sort_time - 排序时间
     */
    public Date getSortTime() {
        return sortTime;
    }

    /**
     * 设置排序时间
     *
     * @param sortTime 排序时间
     */
    public void setSortTime(Date sortTime) {
        this.sortTime = sortTime;
    }

    /**
     * 获取是否删除，1是0否 
     *
     * @return is_del - 是否删除，1是0否 
     */
    public Boolean getIsDel() {
        return isDel;
    }

    /**
     * 设置是否删除，1是0否 
     *
     * @param isDel 是否删除，1是0否 
     */
    public void setIsDel(Boolean isDel) {
        this.isDel = isDel;
    }
}