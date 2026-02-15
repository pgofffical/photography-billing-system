package com.demo.dao;

import org.bson.Document;
import com.mongodb.client.MongoCollection;
import com.demo.util.MongoDBConnection;

public class BookingDAO {

    private MongoCollection<Document> collection =
            MongoDBConnection.getDatabase().getCollection("bookings");

    public void addBooking(Document doc) {
        collection.insertOne(doc);
    }
}
