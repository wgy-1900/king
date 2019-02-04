package com.wgyws.king.pojo;

/**
 * @author Tang
 */
public class User {
    private String account;
    private String pwd;

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    @Override
    public String toString() {
        return "User [account=" + account + ", pwd=" + pwd + "]";
    }

}
