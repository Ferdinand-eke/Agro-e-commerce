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
public class OrderBillingAddress {
    
    private String orderId;
    private String orderBillingName;
    private String orderBillingStreet1;
    private String orderBillingStreet2;
    private String orderBillingCity;
    private String orderBillingCountry;
    private String orderBillingZipCode;
    private String userId;

//    public int getOrderId() {
//        return orderId;
//    }
//
//    public void setId(int id) {
//        this.orderId = id;
//    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }


    
    
    public String getOrderBillingName() {
        return orderBillingName;
    }

    public void setOrderBillingName(String orderBillingName) {
        this.orderBillingName = orderBillingName;
    }

    public String getOrderBillingStreet1() {
        return orderBillingStreet1;
    }

    public void setOrderBillingStreet1(String orderBillingStreet1) {
        this.orderBillingStreet1 = orderBillingStreet1;
    }

    public String getOrderBillingStreet2() {
        return orderBillingStreet2;
    }

    public void setOrderBillingStreet2(String orderBillingStreet2) {
        this.orderBillingStreet2 = orderBillingStreet2;
    }

    public String getOrderBillingCity() {
        return orderBillingCity;
    }

    public void setOrderBillingCity(String orderBillingCity) {
        this.orderBillingCity = orderBillingCity;
    }

    public String getOrderBillingCountry() {
        return orderBillingCountry;
    }

    public void setOrderBillingCountry(String orderBillingCountry) {
        this.orderBillingCountry = orderBillingCountry;
    }

    public String getOrderBillingZipCode() {
        return orderBillingZipCode;
    }

    public void setOrderBillingZipCode(String orderBillingZipCode) {
        this.orderBillingZipCode = orderBillingZipCode;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
    
    
    
}
