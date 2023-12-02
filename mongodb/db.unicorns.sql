db.unicorns.find({
    vampires: { $exists: 1}
});


db.unicorns.find({
    vampires: { $exists:0}
});

db.unicorns.find({
    name: 'Ricoriki Tyndall'
});

db.unicorns.updateOne({
    name: 'Ricoriki Tyndall'
},{
    $inc: { vampires : 2}
});

db.unicorns.updateOne({
    name: 'Ricoriki Tyndall'
},{
    $set: {
        loves: ['Manchurian']
    }
});


db.unicorns.updateOne({
    name: 'Ricoriki Tyndall'
},{
    $push: { loves: 'Dosa'}
});


db.unicorns.updateOne({
    name: 'Ricoriki Tyndall'
},{
    $pop: { loves: 1}
});


db.unicorns.updateOne({
    name: 'Ricoriki Tyndall'
},{
    $push: { loves: ['Pizza', 'Oregano', 'Chilli Flakes']}
});

db.unicorns.updateOne({
    name: 'Perry'
},{
    $set: {
        address: {
            line1: "1/3rd Street",
            line2: "2/3rd Street",
            city: "Rajkot",
            state: 'Gujarat',
            pin: "360001"
        }
    }
});

db.unicorns.find({
    name: 'Perry'
});

db.unicorns.find({ name: 'Arnaldo Vonasek' },{
    "address.pin": 1
})