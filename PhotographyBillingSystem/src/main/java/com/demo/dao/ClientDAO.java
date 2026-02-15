package com.demo.dao;

import com.demo.util.MongoDBConnection;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.model.Filters;

import org.bson.Document;
import org.bson.types.ObjectId;

import java.util.ArrayList;
import java.util.List;

public class ClientDAO {

    // SINGLE collection reference (BEST PRACTICE)
    private MongoCollection<Document> collection =
            MongoDBConnection.getDatabase().getCollection("clients");

    // ADD CLIENT
    public void addClient(Document doc) {
        collection.insertOne(doc);
    }

    // DELETE CLIENT
    public void deleteClient(String id) {
        collection.deleteOne(Filters.eq("_id", new ObjectId(id)));
    }

    // GET ALL CLIENTS
    public List<Document> getAllClients() {
        List<Document> list = new ArrayList<>();

        MongoCollection<Document> col =
                MongoDBConnection.getCollection("clients");

        for (Document d : col.find()) {
            list.add(d);
        }
        return list;
    }


    // UPDATE CLIENT
    public void updateClient(String id, Document doc) {
        collection.updateOne(
                Filters.eq("_id", new ObjectId(id)),
                new Document("$set", doc)
        );
    }
    
}
