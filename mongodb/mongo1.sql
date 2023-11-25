name:,
dob:,
loves:,
gender:,
weight:,
vampires:


db.unicorns.insert({
    name: "Marry",
    dob: new Date(2023,1,20,14,44),
    loves: ['apple', 'grapes'],
    gender: "Female",
    weight: 450,
    vampires: 43
});

db.unicorns.insertOne({
    name: "Harry",
    dob: new Date(2023,0,20,10,10),
    loves: ['orange', 'mango'],
    gender: "Male",
    weight: 650,
    vampires: 55
});

db.unicorns.insertOne({
    _id: 1001,
    name: "Perry",
    dob: new Date(2023,0,20,10,10),
    loves: ['orange', 'mango'],
    gender: "Female",
    weight: 650,
    vampires: 55
});

db.unicorns.insertMany(
[{
  "name": "Tamqrah Giller",
  "dob": new Date(2023,11,31),
  "loves": ['strawberry','kiwi'],
  "gender": "Female",
  "weight": 333,
  "vampires": 33
}, {
  "name": "Pincus Eilhertsen",
  "dob": new Date(2023,8,9),
  "loves": ['chocolate', 'blackberry'],
  "gender": "Male",
  "weight": 733,
  "vampires": 89
}, {
  "name": "Merry Staner",
  "dob": new Date(2023,2,17),
  "loves": ['chocolate','vanilla'],
  "gender": "Polygender",
  "weight": 346,
  "vampires": 90
}, {
  "name": "Andre Moehler",
  "dob": new Date(2023,9,9),
  "loves": ["Kaju Draksh", "Matho"],
  "gender": "Male",
  "weight": 283,
  "vampires": 77
}, {
  "name": "Waldo Pruce",
  "dob": new Date(2023,10,5),
  "loves": ["Kaju Katri", "Thabdi"],
  "gender": "Male",
  "weight": 563,
  "vampires": 17
}, {
  "name": "Bail Tames",
  "dob": new Date(2023,1,25),
  "loves": ["Jambu", "Adadiya"],
  "gender": "Male",
  "weight": 613,
  "vampires": 91
}, {
  "name": "Kellina Barbara",
  "dob": new Date(2023,6,24),
  "loves": ["Jamub", "Mohanthal", "Chocolate", "Jalebi"],
  "gender": "Female",
  "weight": 468,
  "vampires": 29
}, {
  "name": "Francis Blackborn",
  "dob": new Date(2023,5,9),
  "loves": ["Jalebi", "Gathiya", "Cha", "Sambharo", "Chips"],
  "gender": "Male",
  "weight": 813,
  "vampires": 2
}, {
  "name": "Ricoriki Tyndall",
  "dob": new Date(2023,11,12),
  "loves": ["Paneer Butter Masala", "Dosa"],
  "gender": "Male",
  "weight": 520,
  "vampires": 45
}, {
  "name": "Arnaldo Vonasek",
  "dob": new Date(2023,10,20),
  "loves": ["Avocardo", "Pani Puri", "Chole Bhature", "Momos"],
  "gender": "Male",
  "weight": 642,
  "vampires": 41
}]
);

select * from unicorns.
db.unicorns.find();

select * from unicorns where weight > 500;

db.unicorns.find({
    weight: {$gt: 500}
});

db.unicorns.find({
    weight: {$lt: 500}
});


db.unicorns.find({
    weight: {$lte: 500}
});

db.unicorns.find({
    weight: {$gte: 500}
});

db.unicorns.find({
    weight: {$ne: 733}
});

db.unicorns.find({
    weight: { $gt: 500}, 
    gender: "Male"
});

db.unicorns.find({
    gender: "Male",
    loves : {$in: ['apple', 'chocolate'] }
});

db.unicorns.find({
    gender: "Female",
    loves : {$in: ['apple', 'chocolate'] }
});

db.unicorns.find({
    gender: "Polygender",
    loves : {$in: ['apple', 'chocolate'] }
});

db.unicorns.find({
    weight: {$gt: 600}, 
    gender: "Male"
});

db.unicorns.find({
    gender: "Male",
    $or: [
        {weight: {$gt: 200}},
        {loves : {$in: ['apple', 'Pani Puri'] }}
    ]
});

db.unicorns.find({
    gender: "Male",
    $and: [
        {weight: {$gt: 200}},
        {loves : {$in: ['apple', 'Pani Puri'] }}
    ]
});

db.unicorns.find({
    $and : [ {gender: "Male"},
    {
        $or: [
        {weight: {$gt: 200}},
        {loves : {$in: ['apple', 'Pani Puri'] }}
        ]
    }
    ]
});


db.unicorns.find({
    weight : {$gt: 800}
}, {
    name: 1,
    weight: 1,
    dob: 1
});

db.unicorns.find({
    weight : {$gt: 800}
}, {
    _id: 0,
    loves: 0
});
select name, weight, dob from unicorns.