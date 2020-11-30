
// https://docs.mongodb.com/manual/tutorial/query-documents/

//
// mongo --host 52.241.138.173 --port 27017 -u admin -p mong044120 --authenticationDatabase admin
// mongo --host mongo-internal.mongo.svc.cluster.local --port 27017 -u admin -p mong044120 --authenticationDatabase admin

// mongodb://[username:password@]host1[:port1][,...hostN[:portN]][/[defaultauthdb][?options]]
// mongodb://admin@mongo-internal.mongo.svc.cluster.local:27017/admin

// use ecommerce

//show dbs

db.collection.deleteMany({});

// INSERT INTO products_enriched (department, product_id, name, long_description) VALUES (0, 0, 'Product Name', 'Long Description');
db.products_enriched.insertOne({department:0, product_id: 0, name: "Product Name", long_description: "Long Description"});


db.products.insertMany([
{ department:1, product_id: 1001, name: "Butter Bread"},
{ department:1, product_id: 1002, name: "Butter Croissant"},
{ department:1, product_id: 1003, name: "Banana Bread"},
{ department:1, product_id: 1004, name: "Apple Pie"},
{ department:1, product_id: 1005, name: "Blueberry Muffin"},
{ department:2, product_id: 2001, name: "Almond Milk"},
{ department:2, product_id: 2002, name: "Whole Milk"},
{ department:3, product_id: 3001, name: "Carrots"},
{ department:3, product_id: 3002, name: "Tangerine"},
{ department:4, product_id: 4001, name: "Chicken Drumsticks"},
{ department:4, product_id: 4002, name: "Grass-fed Beef"},
{ department:5, product_id: 5001, name: "Atlantic Salmon"},
{ department:5, product_id: 5002, name: "Pacific Shrimp"}
]);

// https://docs.mongodb.com/manual/tutorial/query-documents/
// SELECT * FROM products
db.products.find({});

db.product_details.insertMany([
{ product_id: 1001, long_description: "Butter Bread description"},
{ product_id: 1002, long_description: "Butter Croissant description"},
{ product_id: 1003, long_description: "Banana Bread description"},
{ product_id: 1004, long_description: "Apple Pie description"},
{ product_id: 1005, long_description: "Blueberry Muffin description"},
{ product_id: 2001, long_description: "Almond Milk description"},
{ product_id: 2002, long_description: "Whole Milk description"},
{ product_id: 3001, long_description: "Carrots description"},
{ product_id: 3002, long_description: "Tangerine description"},
{ product_id: 4001, long_description: "Chicken Drumsticks description"},
{ product_id: 4002, long_description: "Grass-fed Beef description"},
{ product_id: 5001, long_description: "Atlantic Salmon description"},
{ product_id: 5002, long_description: "Pacific Shrimp description"}
]);

// https://docs.mongodb.com/manual/tutorial/query-documents/
// SELECT * FROM product_details
db.product_details.find({});


// https://docs.mongodb.com/manual/tutorial/query-documents/
// SELECT * FROM product_details WHERE _id = "5fa1dacf4f2c2c432af86b38"
db.product_details.find({"_id": ObjectId("5fa1dacf4f2c2c432af86b38")});
