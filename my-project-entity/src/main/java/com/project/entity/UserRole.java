package com.project.entity;


/**
 * 用户角色实体
 */
public class UserRole {

    /**  用户  **/
    private String phone;

    /**  用户具有的角色  **/
    private String rolename;

    public String getPhone() {
        return phone;
    }

    public UserRole(String phone, String rolename) {
        this.phone = phone;
        this.rolename = rolename;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename == null ? null : rolename.trim();
    }

    @Override
    public String toString() {
        return "UserRole{" +
                "phone='" + phone + '\'' +
                ", rolename='" + rolename + '\'' +
                '}';
    }
}