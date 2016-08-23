package cn.edu.aust.entity;

/**
 * Created by tom on 2016/8/23.
 */
public class HttpResult {
    private int code;
    private String resaon;

    public HttpResult(int code, String resaon) {
        this.code = code;
        this.resaon = resaon;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getResaon() {
        return resaon;
    }

    public void setResaon(String resaon) {
        this.resaon = resaon;
    }

    @Override
    public String toString() {
        return "HttpResult{" +
                "code=" + code +
                ", resaon='" + resaon + '\'' +
                '}';
    }
}
