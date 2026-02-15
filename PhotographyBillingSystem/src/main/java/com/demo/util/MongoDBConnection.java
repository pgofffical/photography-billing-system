package com.demo.util;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

import org.bson.Document;

public class MongoDBConnection {

    private static final String URI = "mongodb://localhost:27017";
    private static final String DB_NAME = "photography_billing_db";

    private static MongoClient mongoClient;
    private static MongoDatabase database;

    // PRIVATE constructor (Singleton)
    private MongoDBConnection() {}

    // THREAD-SAFE database access
    public static synchronized MongoDatabase getDatabase() {

        if (mongoClient == null) {
            mongoClient = MongoClients.create(URI);
            database = mongoClient.getDatabase(DB_NAME);
        }
        return database;
    }

    // GET COLLECTION METHOD (VERY IMPORTANT)
    public static MongoCollection<Document> getCollection(String collectionName) {
        return getDatabase().getCollection(collectionName);
    }

    // CLOSE CONNECTION (optional but best practice)
    public static void close() {
        if (mongoClient != null) {
            mongoClient.close();
            mongoClient = null;
            database = null;
        }
    }
}
