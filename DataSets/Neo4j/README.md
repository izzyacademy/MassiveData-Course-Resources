
### Neo4j Cypher DDL and DML Queries

```sql

SHOW DATABASES

CREATE DATABASE customers

:use customers

// Creates the Nodes/Vertices
CREATE (JaneDoe:Person {name:'Jane Doe', country:'USA'})
CREATE (JohnDoe:Person {name:'John Doe', country:'USA'})
CREATE (JamesSmith:Person {name:'JamesSmith', country:'USA'})
CREATE (AlexSmith:Person {name:'Alex Smith', country:'VEN'})
CREATE (JameSmith:Person {name:'Jane Smith', country:'USA'})
CREATE (OliverTwist:Person {name:'Oliver Twist', country:'ZAM'})
CREATE (JoseSantiago:Person {name:'Jose Santiago', country:'USA'})
CREATE (JaimePeters:Person {name:'Jaime Peters', country:'CAN'})
CREATE (SamPeters:Person {name:'Sam Peters', country:'CAN'})
CREATE (AngelaBasco:Person {name:'Angela Basco', country:'ZAM'})

// Creates the relationships/edges
CREATE (JaneDoe)-[:CONTACTED {medium: 'Twitter', date: 20201120}]->(JohnDoe)
CREATE (JaneDoe)-[:CONTACTED {medium: 'WhatsApp', date: 20201122}]->(AlexSmith)
CREATE (OliverTwist)-[:CONTACTED {medium: 'Instagram', date: 20201120}]->(JohnDoe)
CREATE (OliverTwist)-[:CONTACTED {medium: 'Instagram', date: 20201120}]->(AngelaBasco)
CREATE (OliverTwist)-[:CONTACTED {medium: 'Instagram', date: 20201120}]->(SamPeters)
CREATE (JoseSantiago)-[:CONTACTED {medium: 'Twitter', date: 20201120}]->(JaimePeters)
CREATE (JamesSmith)-[:CONTACTED {medium: 'Phone', date: 20201120}]->(JoseSantiago)

// Show us everything in the database
MATCH (n) RETURN n LIMIT 25

// Show us connections to Angela Basco up to 3rd degree connections
MATCH (subject:Person)-[r:CONTACTED*1..3]-(contact:Person)
WHERE subject.name = 'Angela Basco'
RETURN subject, r, contact

```
