# Mongodb

## How to show databases

```Shell
show dbs
```

## change or create database

```shell
db.createCollection('employee')
```

db.employee.find().pretty()

## Access database

```shell
use databaseName
```

## Create collection and inserts data

```shell
db.employeedb.insertOne({employee:1, firstname:'Deyla', lastname:'Morris', department:'ict', salary:2900})

db.employee.insertOne({employee:1, firstname:'Deyla', lastname:'Morris', department:'ict', salary:2900})

db.employee.insertOne({employee:1, firstname:'Deyla', lastname:'Morris', department:'ict', salary:2900})

show dbs

db.stats
```

- insert (depricated)
  - object or array
- insertOne
  - one object
- insertMany
  - array of objects

Insert operation automatically creates \_id field to the inserted objects. The -id is unique (as primary key in relational db)

## Shows collections

```shell
show collections
```

## Creates a collection emp and inserts data (id db does not exist)

```shell
db.emp.insertOne({a:1,b:2})
```

## Shows data, values in collection

```shell
db.emp.find()
```

## Dropping collections/databases

```shell
db.dropDatabase()
db.emp.drop()
```

### Examples

#### insert depricate 5.0

```shell
db.employee.insert({employee:1, firstname:'Deyla', lastname:'Morris', department:'ict', salary:2900})
```

#### insertOne

```shell
db.employee.insertOne({employee:1, firstname:'Matt', lastname:'River', department:'ict', salary:2900})
```

#### insertMany

```shell
db.employee.insertMany([{employee:2, firstname:'Mary', lastname:'Jones', department:'admin', salary:4000}, {employee:3, firstname:'Vera', lastname:'River', department:'admin', salary:3000}])

db.employee.insertMany([{employee:4, firstname:'Jesse', lastname:'Smith', department:'secr', salary:2000}, {employee:5, firstname:'Amanda', lastname:'Jones', department:'Transportation', salary:2500}, {employee:6, firstname:'Mark', lastname:'Goose', department:'ict', salary:4500}, {employee:7, firstname:'George', lastname:'Mande', department:'admin', salary:2800}])
```

### find data from collection

- find
  - use pretty() for pretty output
- findOne()

You can give search criteria as a paramete to find and findOne

```shell
db.employee.find()
```

```shell
db.employee.find().pretty()
```

```shell
db.employee.find({department:'admin'})
```

### Omits id and salary from the result

```shell
db.employee.find({department:'admin'},{\_id:0, salary:0}).pretty()
```

### Returns only salary from the result

```shell
db.employee.find({department:'admin'},{salary:1}).pretty()
```

### finds the first of the collection

```shell
db.employee.findOne()
```

### finds the first that matches the criteria

```shell
db.employee.findOne({department:'admin'})
```

### and & or

```shell
db.employee.find({$and: [{department:'admin'}, {lastname:'River'}]})
```

```shell
db.employee.find({department:'admin', lastname:'River'})
```

```JS
db.employee.find({$or:[{department:'ict'}, {lastname:'River'}]})
```

```JS
db.employee.find({salary:{$gt:4000}}).pretty()
```

```JS
db.employee.find({$and:[{salary:{$gt:2000}},{salary:{$lt:4000}}]})
```

### Sorting

- ascending 1

```JS
db.employee.find().sort({salary:1}).pretty()

db.employee.find().sort({firstname:1,lastname:1}).pretty()
```

- descending -1

```JS
db.employee.find().sort({salary:-1}).pretty()
```

### update documents

- update
- updateOne(updates the first matching)
- updateMany
- save
  - replace old document with a new one
  - uses \_id to identify the document to be updated

### examples

```JS
db.employee.update({lastname:'Morris'}, {$set:{employee:8}})
```

```JS
db.employee.update({lastname:'Mande'}, {$set:{employee:8}})
```

```JS
db.employee.updateOne({department:'ict'}, {$set:{salary:4000}})
```

```JS
db.employee.updateMany({salary:{$lt:3000}}, {$inc:{salary:1000}})
```

- replace

```JS
db.employee.replaceOne({'_id' : ObjectId("628762b78fd7f756b967334a"), a:1, b:2})
```

## remove documents

```JS
db.employee.remove({department: 'admin'})
```

```JS
db.employee.remove({department: 'ict'},{justOne:true})
```

removes all

```JS
db.employee.remove({})
```
