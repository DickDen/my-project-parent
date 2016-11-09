package com.project.entity;

import java.io.Serializable;

/**
 * Created by qiaowentao on 2016/10/31.
 */
public class OnlyOneUser implements Serializable {

    private static final long serialVersionUID = 176123986120812093L;

    private String phone;

    private String utr;

    private String syzt = "Y";

    public OnlyOneUser(){

    }

    public OnlyOneUser(String phone){
        this.phone = phone;
    }

    public OnlyOneUser(String phone, String utr) {
        this.phone = phone;
        this.utr = utr;
    }

    public OnlyOneUser(String phone, String utr, String syzt) {
        this.phone = phone;
        this.utr = utr;
        this.syzt = syzt;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getUtr() {
        return utr;
    }

    public void setUtr(String utr) {
        this.utr = utr;
    }

    public String getSyzt() {
        return syzt;
    }

    public void setSyzt(String syzt) {
        this.syzt = syzt;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OnlyOneUser that = (OnlyOneUser) o;

        if (phone != null ? !phone.equals(that.phone) : that.phone != null) return false;
        if (utr != null ? !utr.equals(that.utr) : that.utr != null) return false;
        return syzt != null ? syzt.equals(that.syzt) : that.syzt == null;

    }

    @Override
    public int hashCode() {
        int result = phone != null ? phone.hashCode() : 0;
        result = 31 * result + (utr != null ? utr.hashCode() : 0);
        result = 31 * result + (syzt != null ? syzt.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "OnlyOneUser{" +
                "phone='" + phone + '\'' +
                ", uTr='" + utr + '\'' +
                ", syzt='" + syzt + '\'' +
                '}';
    }
}
