package com.demo.dao;

import com.demo.util.MongoDBConnection;
import com.mongodb.client.MongoCollection;
import org.bson.Document;
import org.bson.types.ObjectId;

import java.util.ArrayList;
import java.util.List;

public class InvoiceDAO {

    private MongoCollection<Document> collection =
            MongoDBConnection.getDatabase().getCollection("invoices");

    public void addInvoice(Document doc) {
        collection.insertOne(doc);
    }
    
    public List<Document> getAllInvoices() {
        List<Document> list = new ArrayList<>();
        for (Document d : collection.find()) {
            list.add(d);
        }
        return list;
    }
    public void markAsPaid(String invoiceId, String method) {

        MongoCollection<Document> col = MongoDBConnection.getCollection("invoices");

        col.updateOne(
            new Document("_id", new ObjectId(invoiceId)),
            new Document("$set",
                new Document("paymentStatus", "PAID")
                    .append("paymentMethod", method)
            )
        );
    }
}
