package com.demo.model;

public class Client {

    private String id;
    private String name;
    private String phone;
    private String email;
    private String eventType;

    public Client() {}

    public Client(String id, String name, String phone, String email, String eventType) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.eventType = eventType;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEventType() {
        return eventType;
    }

    public void setEventType(String eventType) {
        this.eventType = eventType;
    }
}
