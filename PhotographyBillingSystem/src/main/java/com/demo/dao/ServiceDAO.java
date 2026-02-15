package com.demo.dao;

import org.bson.Document;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.demo.util.MongoDBConnection;

public class ServiceDAO {

    MongoDatabase db = MongoDBConnection.getDatabase();
    MongoCollection<Document> collection = db.getCollection("services");

    public void addService(Document doc) {
        collection.insertOne(doc);
    }
}
