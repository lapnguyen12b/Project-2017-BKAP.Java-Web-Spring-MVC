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
public class Slider {
    private int sliderId;
    private String sliderName;
    private String images;
//    private String link;
    private boolean status;

    public Slider() {
    }

    public Slider(int sliderId, String sliderName, String images, boolean status) {
        this.sliderId = sliderId;
        this.sliderName = sliderName;
        this.images = images;
        this.status = status;
    }

    public int getSliderId() {
        return sliderId;
    }

    public void setSliderId(int sliderId) {
        this.sliderId = sliderId;
    }

    public String getSliderName() {
        return sliderName;
    }

    public void setSliderName(String sliderName) {
        this.sliderName = sliderName;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
    
}
