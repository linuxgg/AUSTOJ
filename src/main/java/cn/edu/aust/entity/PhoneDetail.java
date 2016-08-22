package cn.edu.aust.entity;


import java.io.Serializable;


public class PhoneDetail implements Serializable {


    private static final long serialVersionUID = 1185246134083540727L;

    private int id;
    private String model;
    private String brand;
    private String imei;
    private String uuid;

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

    @Override
    public String toString() {
        return "PhoneDetail{" +
                "id=" + id +
                ", model='" + model + '\'' +
                ", brand='" + brand + '\'' +
                ", imei='" + imei + '\'' +
                ", uuid='" + uuid + '\'' +
                '}';
    }


}