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
public class Product {
   private int id;
   private String name;
   private String category;
   private String producer;
   private double listpPrice;
   private double price;
   private String description;
   private double shippingWeight;
   private String shippingWeightUnit;
   private String inStockNumber;
   private String filename;
   private String publisherCompany;
   private String publicationDate;
   private String status;
   private String origin;

    public Product() {
    }

    public Product(int id, String publisherCompany) {
        this.id = id;
        this.publisherCompany = publisherCompany;
    }

    public Product(int id, String name, String category, String producer, double listpPrice, double price, String description, double shippingWeight, String shippingWeightUnit, String inStockNumber, String filename, String publisherCompany, String publicationDate, String status, String origin) {
        this.id = id;
        this.name = name;
        this.category = category;
        this.producer = producer;
        this.listpPrice = listpPrice;
        this.price = price;
        this.description = description;
        this.shippingWeight = shippingWeight;
        this.shippingWeightUnit = shippingWeightUnit;
        this.inStockNumber = inStockNumber;
        this.filename = filename;
        this.publisherCompany = publisherCompany;
        this.publicationDate = publicationDate;
        this.status = status;
        this.origin = origin;
    }

    public Product(String name, String category, String producer, double listpPrice, double price, String description,
            double shippingWeight, String shippingWeightUnit, String inStockNumber, String filename,
            String publisherCompany, String publicationDate, String status, String origin) {
        this.name = name;
        this.category = category;
        this.producer = producer;
        this.listpPrice = listpPrice;
        this.price = price;
        this.description = description;
        this.shippingWeight = shippingWeight;
        this.shippingWeightUnit = shippingWeightUnit;
        this.inStockNumber = inStockNumber;
        this.filename = filename;
        this.publisherCompany = publisherCompany;
        this.publicationDate = publicationDate;
        this.status = status;
        this.origin = origin;
    }

    public Product(String name, String category, String producer, double listpPrice, double price, String description, double shippingWeight, String shippingWeightUnit, String inStockNumber, String publisherCompany, String publicationDate, String status, String origin) {
        this.name = name;
        this.category = category;
        this.producer = producer;
        this.listpPrice = listpPrice;
        this.price = price;
        this.description = description;
        this.shippingWeight = shippingWeight;
        this.shippingWeightUnit = shippingWeightUnit;
        this.inStockNumber = inStockNumber;
        this.publisherCompany = publisherCompany;
        this.publicationDate = publicationDate;
        this.status = status;
        this.origin = origin;
    }

    
   
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }

    public double getListpPrice() {
        return listpPrice;
    }

    public void setListpPrice(double listpPrice) {
        this.listpPrice = listpPrice;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getShippingWeight() {
        return shippingWeight;
    }

    public void setShippingWeight(double shippingWeight) {
        this.shippingWeight = shippingWeight;
    }





    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }



    public String getShippingWeightUnit() {
        return shippingWeightUnit;
    }

    public void setShippingWeightUnit(String shippingWeightUnit) {
        this.shippingWeightUnit = shippingWeightUnit;
    }

    public String getInStockNumber() {
        return inStockNumber;
    }

    public void setInStockNumber(String inStockNumber) {
        this.inStockNumber = inStockNumber;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getPublisherCompany() {
        return publisherCompany;
    }

    public void setPublisherCompany(String publisherCompany) {
        this.publisherCompany = publisherCompany;
    }

    public String getPublicationDate() {
        return publicationDate;
    }

    public void setPublicationDate(String publicationDate) {
        this.publicationDate = publicationDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }


   
}
