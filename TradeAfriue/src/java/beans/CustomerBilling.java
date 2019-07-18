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
public class CustomerBilling {
    private int id;
    private String userBillingCity;
    private String userBillingCountry;
    private String userBillingName;
    private String userBillingState;
    private String userBillingStreet1;
    private String userBillingStreet2;
    private String userBillingZipCode;
    private String userId;

    public CustomerBilling() {
    }

    
    
    public CustomerBilling(int id, String userId) {
        this.id = id;
        this.userId = userId;
    }

    public CustomerBilling(String userId) {
        this.userId = userId;
    }

    
    
    public CustomerBilling(String userBillingCity, String userBillingCountry, String userBillingName, String userBillingState, String userBillingStreet1, String userBillingStreet2, String userBillingZipCode, String userId) {
        this.userBillingCity = userBillingCity;
        this.userBillingCountry = userBillingCountry;
        this.userBillingName = userBillingName;
        this.userBillingState = userBillingState;
        this.userBillingStreet1 = userBillingStreet1;
        this.userBillingStreet2 = userBillingStreet2;
        this.userBillingZipCode = userBillingZipCode;
        this.userId = userId;
    }

    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserBillingCity() {
        return userBillingCity;
    }

    public void setUserBillingCity(String userBillingCity) {
        this.userBillingCity = userBillingCity;
    }

    public String getUserBillingCountry() {
        return userBillingCountry;
    }

    public void setUserBillingCountry(String userBillingCountry) {
        this.userBillingCountry = userBillingCountry;
    }

    public String getUserBillingName() {
        return userBillingName;
    }

    public void setUserBillingName(String userBillingName) {
        this.userBillingName = userBillingName;
    }

    public String getUserBillingState() {
        return userBillingState;
    }

    public void setUserBillingState(String userBillingState) {
        this.userBillingState = userBillingState;
    }

    public String getUserBillingStreet1() {
        return userBillingStreet1;
    }

    public void setUserBillingStreet1(String userBillingStreet1) {
        this.userBillingStreet1 = userBillingStreet1;
    }

    public String getUserBillingStreet2() {
        return userBillingStreet2;
    }

    public void setUserBillingStreet2(String userBillingStreet2) {
        this.userBillingStreet2 = userBillingStreet2;
    }

    public String getUserBillingZipCode() {
        return userBillingZipCode;
    }

    public void setUserBillingZipCode(String userBillingZipCode) {
        this.userBillingZipCode = userBillingZipCode;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
    
    
}
