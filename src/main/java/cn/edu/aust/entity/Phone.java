package cn.edu.aust.entity;


import java.io.Serializable;


public class Phone implements Serializable {


    private static final long serialVersionUID = 1185246134083540727L;

    private int id;
    private String model;
    private String brand;
    private String os;
    private String imei;
    private String uuid;
    private Boolean zoomsuppported = false;
    private Boolean videostabilization = false;
    private String focusmode;
    private String flashmode;
    private String previewsize;
    private String details;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getOs() {
        return os;
    }

    public void setOs(String os) {
        this.os = os;
    }

    public String getImei() {
        return imei;
    }

    public void setImei(String imei) {
        this.imei = imei;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public Boolean getZoomsuppported() {
        return zoomsuppported;
    }

    public void setZoomsuppported(Boolean zoomsuppported) {
        this.zoomsuppported = zoomsuppported;
    }

    public Boolean getVideostabilization() {
        return videostabilization;
    }

    public void setVideostabilization(Boolean videostabilization) {
        this.videostabilization = videostabilization;
    }

    public String getFocusmode() {
        return focusmode;
    }

    public void setFocusmode(String focusmode) {
        this.focusmode = focusmode;
    }

    public String getFlashmode() {
        return flashmode;
    }

    public void setFlashmode(String flashmode) {
        this.flashmode = flashmode;
    }

    public String getPreviewsize() {
        return previewsize;
    }

    public void setPreviewsize(String previewsize) {
        this.previewsize = previewsize;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    @Override
    public String toString() {
        return "Phone{" +
                "id=" + id +
                ", model='" + model + '\'' +
                ", brand='" + brand + '\'' +
                ", os='" + os + '\'' +
                ", imei='" + imei + '\'' +
                ", uuid='" + uuid + '\'' +
                ", zoomsuppported=" + zoomsuppported +
                ", videostabilization=" + videostabilization +
                ", focusmode='" + focusmode + '\'' +
                ", flashmode='" + flashmode + '\'' +
                ", previewsize='" + previewsize + '\'' +
                ", details='" + details + '\'' +
                '}';
    }
}