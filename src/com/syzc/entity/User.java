package com.syzc.entity;

public class User {
    private int uid;
    private String uname;
    private String upwd;
    private String uemail;
    private String utele;

    public int getUid() {
        return uid;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
    }

    public void setUtele(String utele) {
        this.utele = utele;
    }

    public String getUemail() {
        return uemail;
    }

    public String getUtele() {
        return utele;
    }

    public String getUname() {
        return uname;
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", uname='" + uname + '\'' +
                ", upwd='" + upwd + '\'' +
                ",uemail='" + uemail +'\''+
                ",utele='" + utele +'\''+
                '}';
    }
}
