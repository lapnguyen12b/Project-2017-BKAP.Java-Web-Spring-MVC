/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p.ulti;

/**
 *
 * @author LAPNV
 */
public class News {
    private int newsId;
    private String newsTitle;
    private String newsContent;
    private String newsContentDetail;
    private String newsImages;
    private String newsCreated;
    private boolean  newsStatus;

    public News() {
    }

    public News(int newsId, String newsTitle, String newsContent, String newsContentDetail, String newsImages, String newsCreated, boolean newsStatus) {
        this.newsId = newsId;
        this.newsTitle = newsTitle;
        this.newsContent = newsContent;
        this.newsContentDetail = newsContentDetail;
        this.newsImages = newsImages;
        this.newsCreated = newsCreated;
        this.newsStatus = newsStatus;
    }

    public int getNewsId() {
        return newsId;
    }

    public void setNewsId(int newsId) {
        this.newsId = newsId;
    }

    public String getNewsTitle() {
        return newsTitle;
    }

    public void setNewsTitle(String newsTitle) {
        this.newsTitle = newsTitle;
    }

    public String getNewsContent() {
        return newsContent;
    }

    public void setNewsContent(String newsContent) {
        this.newsContent = newsContent;
    }

    public String getNewsContentDetail() {
        return newsContentDetail;
    }

    public void setNewsContentDetail(String newsContentDetail) {
        this.newsContentDetail = newsContentDetail;
    }

    public String getNewsImages() {
        return newsImages;
    }

    public void setNewsImages(String newsImages) {
        this.newsImages = newsImages;
    }

    public String getNewsCreated() {
        return newsCreated;
    }

    public void setNewsCreated(String newsCreated) {
        this.newsCreated = newsCreated;
    }

    public boolean isNewsStatus() {
        return newsStatus;
    }

    public void setNewsStatus(boolean newsStatus) {
        this.newsStatus = newsStatus;
    }
    
    
}
