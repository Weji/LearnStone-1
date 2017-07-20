const unirest = require('unirest');
const mysql = require('mysql');

var connection = mysql.createConnection({
  host : 'localhost',
  user : 'root',
  password : 'root',
  database : 'LearnStone',
  port : 8889
});

unirest.get("https://omgvamp-hearthstone-v1.p.mashape.com/cards?collectible=1&locale=frFR")
.header("X-Mashape-Key", "fmC1YCENtdmshGSNDqw0J9OvwuwWp1C7omxjsnrpJBXUqJycAE")
.end(function (result) {
  console.log(result.body.Basic[0].cardSet);

// unirest.get("https://omgvamp-hearthstone-v1.p.mashape.com/cards/sets/Hall%20of%20Fame?collectible=1&locale=frFR")
// .header("X-Mashape-Key", "fmC1YCENtdmshGSNDqw0J9OvwuwWp1C7omxjsnrpJBXUqJycAE")
// .end(function (result) {
//   console.log(result.body[0]);


  connection.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");

    var sql = `SELECT idRefCardsSet FROM RefCardsSet WHERE lblCardsSet = '${result.body.Basic[0].cardSet}'`;

    // var sql = "INSERT INTO Card (name, text, attack, health, manaCost, artist, durability, idRefClass, idRefCardsSet, idRefType, idRefRace, idRefRarity, img, imgGold) VALUES ?";
    // var values = []
    //
    for(let i = 0; i < result.body.Basic.length; i++){
      let refCardSet = result.body.Basic[i].cardSet;
      // console.log(refCardSet)

      // values.push([result.body.Basic[i].name, result.body.Basic[i].text, result.body.Basic[i].attack, result.body.Basic[i].health, result.body.Basic[i].cost, result.body.Basic[i].artist, result.body.Basic[i].durability, 1, `SELECT idRefCardsSet FROM RefCardsSet WHERE lblCardsSet = "${refCardSet}"`, 1, 1, 1, result.body.Basic[i].img, result.body.Basic[i].imgGold]);
    }
    //
    // for(let i = 0; i < result.body.Classic.length; i++){
    //  values.push([result.body.Classic[i].name, result.body.Classic[i].text, result.body.Classic[i].attack, result.body.Classic[i].health, result.body.Classic[i].cost, result.body.Classic[i].artist, result.body.Classic[i].durability, 1, 1, 1, 1, 1, result.body.Classic[i].img, result.body.Classic[i].imgGold]);
    // }
    //
    // for(let i = 0; i < result.body.Hall Of Fame.length; i++){
    //  values.push([result.body.Classic[i].name, result.body.Classic[i].text, result.body.Classic[i].attack, result.body.Classic[i].health, result.body.Classic[i].cost, result.body.Classic[i].artist, result.body.Classic[i].durability, 1, 1, 1, 1, 1, result.body.Classic[i].img, result.body.Classic[i].imgGold]);
    // }
    //
    // for(let i = 0; i < result.body.Classic.length; i++){
    //  values.push([result.body.Classic[i].name, result.body.Classic[i].text, result.body.Classic[i].attack, result.body.Classic[i].health, result.body.Classic[i].cost, result.body.Classic[i].artist, result.body.Classic[i].durability, 1, 1, 1, 1, 1, result.body.Classic[i].img, result.body.Classic[i].imgGold]);
    // }
    //
    // for(let i = 0; i < result.body.Classic.length; i++){
    //   values.push([result.body.Classic[i].name, result.body.Classic[i].text, result.body.Classic[i].attack, result.body.Classic[i].health, result.body.Classic[i].cost, result.body.Classic[i].artist, result.body.Classic[i].durability, 1, 1, 1, 1, 1, result.body.Classic[i].img, result.body.Classic[i].imgGold]);
    // }
    //
    //
    // connection.query(sql, [values], function (err, result) {
    //   if (err) throw err;
    //   console.log("1 record inserted");
    // });

    connection.query(sql, function (err, result) {
      if (err) throw err;
      console.log(result.);
    });
  });
});
