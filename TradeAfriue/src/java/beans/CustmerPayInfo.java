/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author Ferdinand
 */
public class CustmerPayInfo {
    
    private int id;
    private String userBankName;
    private String userBankAcctName;
    private String userBankAcctNo;
    private String userBankSWT;
    private String userBankConutry;
    private String userId;

    public CustmerPayInfo() {
    }
    
    public CustmerPayInfo(int id, String userId) {
        this.id = id;
        this.userId = userId;
    }

    public CustmerPayInfo(String userId) {
        this.userId = userId;
    }

    public CustmerPayInfo(String userBankName, String userBankAcctName, String userBankAcctNo, String userBankSWT, String userBankConutry, String userId) {
        this.userBankName = userBankName;
        this.userBankAcctName = userBankAcctName;
        this.userBankAcctNo = userBankAcctNo;
        this.userBankSWT = userBankSWT;
        this.userBankConutry = userBankConutry;
        this.userId = userId;
    }

    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserBankName() {
        return userBankName;
    }

    public void setUserBankName(String userBankName) {
        this.userBankName = userBankName;
    }

    public String getUserBankAcctName() {
        return userBankAcctName;
    }

    public void setUserBankAcctName(String userBankAcctName) {
        this.userBankAcctName = userBankAcctName;
    }

    public String getUserBankAcctNo() {
        return userBankAcctNo;
    }

    public void setUserBankAcctNo(String userBankAcctNo) {
        this.userBankAcctNo = userBankAcctNo;
    }

    public String getUserBankSWT() {
        return userBankSWT;
    }

    public void setUserBankSWT(String userBankSWT) {
        this.userBankSWT = userBankSWT;
    }

    public String getUserBankConutry() {
        return userBankConutry;
    }

    public void setUserBankConutry(String userBankConutry) {
        this.userBankConutry = userBankConutry;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
    
    
    
}
