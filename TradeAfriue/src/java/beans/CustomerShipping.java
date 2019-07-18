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
public class CustomerShipping {
    
    private int id;
    private int userShippingdefault;
    private String userShippingCity;
    private String userShippingCountry;
    private String userShippingName;
    private String userShippingState;
    private String userShippingStreet1;
    private String userShippingStreet2;
    private String userShippingZipCode;
    private String userId;

    public CustomerShipping() {
    }

    public CustomerShipping(int id, int userShippingdefault, String userId) {
        this.id = id;
        this.userShippingdefault = userShippingdefault;
        this.userId = userId;
    }

    public CustomerShipping(int userShippingdefault, String userShippingCity, String userShippingCountry, String userShippingName, String userShippingState, String userShippingStreet1, String userShippingStreet2, String userShippingZipCode, String userId) {
        this.userShippingdefault = userShippingdefault;
        this.userShippingCity = userShippingCity;
        this.userShippingCountry = userShippingCountry;
        this.userShippingName = userShippingName;
        this.userShippingState = userShippingState;
        this.userShippingStreet1 = userShippingStreet1;
        this.userShippingStreet2 = userShippingStreet2;
        this.userShippingZipCode = userShippingZipCode;
        this.userId = userId;
    }

    
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserShippingdefault() {
        return userShippingdefault;
    }

    public void setUserShippingdefault(int userShippingdefault) {
        this.userShippingdefault = userShippingdefault;
    }

    public String getUserShippingCity() {
        return userShippingCity;
    }

    public void setUserShippingCity(String userShippingCity) {
        this.userShippingCity = userShippingCity;
    }

    public String getUserShippingCountry() {
        return userShippingCountry;
    }

    public void setUserShippingCountry(String userShippingCountry) {
        this.userShippingCountry = userShippingCountry;
    }

    public String getUserShippingName() {
        return userShippingName;
    }

    public void setUserShippingName(String userShippingName) {
        this.userShippingName = userShippingName;
    }

    public String getUserShippingState() {
        return userShippingState;
    }

    public void setUserShippingState(String userShippingState) {
        this.userShippingState = userShippingState;
    }

    public String getUserShippingStreet1() {
        return userShippingStreet1;
    }

    public void setUserShippingStreet1(String userShippingStreet1) {
        this.userShippingStreet1 = userShippingStreet1;
    }

    public String getUserShippingStreet2() {
        return userShippingStreet2;
    }

    public void setUserShippingStreet2(String userShippingStreet2) {
        this.userShippingStreet2 = userShippingStreet2;
    }

    public String getUserShippingZipCode() {
        return userShippingZipCode;
    }

    public void setUserShippingZipCode(String userShippingZipCode) {
        this.userShippingZipCode = userShippingZipCode;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
    
    
    
    
}
