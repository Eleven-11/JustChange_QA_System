package com.heeexy.example.util.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "t_banner")
public class Banner {
    /**
     * 滚动栏id
     */
    @Id
    private Integer id;

    /**
     * 名称
     */
    @Column(name = "banner_name")
    private String bannerName;

    /**
     * 滚动栏图片地址
     */
    @Column(name = "banner_picture")
    private String bannerPicture;

    /**
     * 滚动栏链接
     */
    @Column(name = "banner_link")
    private String bannerLink;

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
     * 获取滚动栏id
     *
     * @return id - 滚动栏id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置滚动栏id
     *
     * @param id 滚动栏id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取名称
     *
     * @return banner_name - 名称
     */
    public String getBannerName() {
        return bannerName;
    }

    /**
     * 设置名称
     *
     * @param bannerName 名称
     */
    public void setBannerName(String bannerName) {
        this.bannerName = bannerName;
    }

    /**
     * 获取滚动栏图片地址
     *
     * @return banner_picture - 滚动栏图片地址
     */
    public String getBannerPicture() {
        return bannerPicture;
    }

    /**
     * 设置滚动栏图片地址
     *
     * @param bannerPicture 滚动栏图片地址
     */
    public void setBannerPicture(String bannerPicture) {
        this.bannerPicture = bannerPicture;
    }

    /**
     * 获取滚动栏链接
     *
     * @return banner_link - 滚动栏链接
     */
    public String getBannerLink() {
        return bannerLink;
    }

    /**
     * 设置滚动栏链接
     *
     * @param bannerLink 滚动栏链接
     */
    public void setBannerLink(String bannerLink) {
        this.bannerLink = bannerLink;
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