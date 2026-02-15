package com.demo.model;

public class Invoice {

    private String id;
    private String clientId;
    private String service;
    private double amount;
    private String billDate;

    public Invoice() {}

    public Invoice(String id, String clientId, String service,
                   double amount, String billDate) {
        this.id = id;
        this.clientId = clientId;
        this.service = service;
        this.amount = amount;
        this.billDate = billDate;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getClientId() {
        return clientId;
    }

    public void setClientId(String clientId) {
        this.clientId = clientId;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public String getBillDate() {
        return billDate;
    }

    public void setBillDate(String billDate) {
        this.billDate = billDate;
    }
}
