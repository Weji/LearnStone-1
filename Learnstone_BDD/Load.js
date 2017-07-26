const unirest = require('unirest');
const mysql = require('mysql');

var connection = mysql.createConnection({
  host : 'localhost',
  user : 'root',
  password : 'root',
  database : 'LearnStone_High',
  port : 8889
});

var allCardSet = {};
var allClass = {};
var allType = {};
var allRace = {};
var allRarity = {};

connection.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");

  var sql = `SELECT * FROM RefCardsSet`;

  connection.query(sql, function (err, result) {
    if (err) throw err;
    for (var i = 0; i < result.length; i++) {
      allCardSet[result[i].lblCardsSet] = result[i].idRefCardsSet;
    }
  });

  var sql = `SELECT * FROM RefClass`;

  connection.query(sql, function (err, result) {
    if (err) throw err;
    for (var i = 0; i < result.length; i++) {
      allClass[result[i].lblClass] = result[i].idRefClass;
    }
  });

  var sql = `SELECT * FROM RefType`;

  connection.query(sql, function (err, result) {
    if (err) throw err;
    for (var i = 0; i < result.length; i++) {
      allType[result[i].lblType] = result[i].idRefType;
    }
  });

  var sql = `SELECT * FROM RefRace`;

  connection.query(sql, function (err, result) {
    if (err) throw err;
    for (var i = 0; i < result.length; i++) {
      allRace[result[i].lblRace] = result[i].idRefRace;
    }
  });

  var sql = `SELECT * FROM RefRarity`;

  connection.query(sql, function (err, result) {
    if (err) throw err;
    for (var i = 0; i < result.length; i++) {
      allRarity[result[i].lblRarity] = result[i].idRefRarity;
    }
  });
});

unirest.get("https://omgvamp-hearthstone-v1.p.mashape.com/cards?collectible=1&locale=frFR")
.header("X-Mashape-Key", "fmC1YCENtdmshGSNDqw0J9OvwuwWp1C7omxjsnrpJBXUqJycAE")
.end(function (result) {

  console.log(result.body.Basic.length); // 142
  console.log(result.body.Classic.length); // 239
  console.log(result.body["Hall of Fame"].length); // 10
  console.log(result.body["Whispers of the Old Gods"].length); // 134
  console.log(result.body["One Night in Karazhan"].length); // 45
  console.log(result.body["Goblins vs Gnomes"].length); // 123
  console.log(result.body["Blackrock Mountain"].length); // 31
  console.log(result.body["The Grand Tournament"].length); // 132
  console.log(result.body["The League of Explorers"].length); // 45
  console.log(result.body.Naxxramas.length); // 30



    var sql = "INSERT INTO Card (name, text, attack, health, manaCost, artist, durability, idRefClass, idRefCardsSet, idRefType, idRefRace, idRefRarity, img, imgGold) VALUES ?";
    var values = []

    for(var i = 0; i < result.body.Basic.length; i++){
      values.push([result.body.Basic[i].name, result.body.Basic[i].text, result.body.Basic[i].attack, result.body.Basic[i].health, result.body.Basic[i].cost, result.body.Basic[i].artist, result.body.Basic[i].durability, allClass[result.body.Basic[i].playerClass], allCardSet[result.body.Basic[i].cardSet], allType[result.body.Basic[i].type], allRace[result.body.Basic[i].race], allRarity[result.body.Basic[i].rarity], result.body.Basic[i].img, result.body.Basic[i].imgGold]);
    }

    for(var i = 0; i < result.body.Classic.length; i++){
     values.push([result.body.Classic[i].name, result.body.Classic[i].text, result.body.Classic[i].attack, result.body.Classic[i].health, result.body.Classic[i].cost, result.body.Classic[i].artist, result.body.Classic[i].durability, allClass[result.body.Classic[i].playerClass], allCardSet[result.body.Classic[i].cardSet], allType[result.body.Classic[i].type], allRace[result.body.Classic[i].race], allRarity[result.body.Classic[i].rarity], result.body.Classic[i].img, result.body.Classic[i].imgGold]);
    }

    for(var i = 0; i < result.body["Hall of Fame"].length; i++){
     values.push([result.body["Hall of Fame"][i].name, result.body["Hall of Fame"][i].text, result.body["Hall of Fame"][i].attack, result.body["Hall of Fame"][i].health, result.body["Hall of Fame"][i].cost, result.body["Hall of Fame"][i].artist, result.body["Hall of Fame"][i].durability, allClass[result.body["Hall of Fame"][i].playerClass], allCardSet[result.body["Hall of Fame"][i].cardSet], allType[result.body["Hall of Fame"][i].type], allRace[result.body["Hall of Fame"][i].race], allRarity[result.body["Hall of Fame"][i].rarity], result.body["Hall of Fame"][i].img, result.body["Hall of Fame"][i].imgGold]);
    }

    for(var i = 0; i < result.body["Whispers of the Old Gods"].length; i++){
      values.push([result.body["Whispers of the Old Gods"][i].name, result.body["Whispers of the Old Gods"][i].text, result.body["Whispers of the Old Gods"][i].attack, result.body["Whispers of the Old Gods"][i].health, result.body["Whispers of the Old Gods"][i].cost, result.body["Whispers of the Old Gods"][i].artist, result.body["Whispers of the Old Gods"][i].durability, allClass[result.body["Whispers of the Old Gods"][i].playerClass], allCardSet[result.body["Whispers of the Old Gods"][i].cardSet], allType[result.body["Whispers of the Old Gods"][i].type], allRace[result.body["Whispers of the Old Gods"][i].race], allRarity[result.body["Whispers of the Old Gods"][i].rarity], result.body["Whispers of the Old Gods"][i].img, result.body["Whispers of the Old Gods"][i].imgGold]);
    }

    for(var i = 0; i < result.body["One Night in Karazhan"].length; i++){
      values.push([result.body["One Night in Karazhan"][i].name, result.body["One Night in Karazhan"][i].text, result.body["One Night in Karazhan"][i].attack, result.body["One Night in Karazhan"][i].health, result.body["One Night in Karazhan"][i].cost, result.body["One Night in Karazhan"][i].artist, result.body["One Night in Karazhan"][i].durability, allClass[result.body["One Night in Karazhan"][i].playerClass], allCardSet[result.body["One Night in Karazhan"][i].cardSet], allType[result.body["One Night in Karazhan"][i].type], allRace[result.body["One Night in Karazhan"][i].race], allRarity[result.body["One Night in Karazhan"][i].rarity], result.body["One Night in Karazhan"][i].img, result.body["One Night in Karazhan"][i].imgGold]);
    }

    for(var i = 0; i < result.body["Goblins vs Gnomes"].length; i++){
      values.push([result.body["Goblins vs Gnomes"][i].name, result.body["Goblins vs Gnomes"][i].text, result.body["Goblins vs Gnomes"][i].attack, result.body["Goblins vs Gnomes"][i].health, result.body["Goblins vs Gnomes"][i].cost, result.body["Goblins vs Gnomes"][i].artist, result.body["Goblins vs Gnomes"][i].durability, allClass[result.body["Goblins vs Gnomes"][i].playerClass], allCardSet[result.body["Goblins vs Gnomes"][i].cardSet], allType[result.body["Goblins vs Gnomes"][i].type], allRace[result.body["Goblins vs Gnomes"][i].race], allRarity[result.body["Goblins vs Gnomes"][i].rarity], result.body["Goblins vs Gnomes"][i].img, result.body["Goblins vs Gnomes"][i].imgGold]);
    }

    for(var i = 0; i < result.body["Blackrock Mountain"].length; i++){
      values.push([result.body["Blackrock Mountain"][i].name, result.body["Blackrock Mountain"][i].text, result.body["Blackrock Mountain"][i].attack, result.body["Blackrock Mountain"][i].health, result.body["Blackrock Mountain"][i].cost, result.body["Blackrock Mountain"][i].artist, result.body["Blackrock Mountain"][i].durability, allClass[result.body["Blackrock Mountain"][i].playerClass], allCardSet[result.body["Blackrock Mountain"][i].cardSet], allType[result.body["Blackrock Mountain"][i].type], allRace[result.body["Blackrock Mountain"][i].race], allRarity[result.body["Blackrock Mountain"][i].rarity], result.body["Blackrock Mountain"][i].img, result.body["Blackrock Mountain"][i].imgGold]);
    }

    for(var i = 0; i < result.body["The Grand Tournament"].length; i++){
      values.push([result.body["The Grand Tournament"][i].name, result.body["The Grand Tournament"][i].text, result.body["The Grand Tournament"][i].attack, result.body["The Grand Tournament"][i].health, result.body["The Grand Tournament"][i].cost, result.body["The Grand Tournament"][i].artist, result.body["The Grand Tournament"][i].durability, allClass[result.body["The Grand Tournament"][i].playerClass], allCardSet[result.body["The Grand Tournament"][i].cardSet], allType[result.body["The Grand Tournament"][i].type], allRace[result.body["The Grand Tournament"][i].race], allRarity[result.body["The Grand Tournament"][i].rarity], result.body["The Grand Tournament"][i].img, result.body["The Grand Tournament"][i].imgGold]);
    }

    for(var i = 0; i < result.body["The League of Explorers"].length; i++){
      values.push([result.body["The League of Explorers"][i].name, result.body["The League of Explorers"][i].text, result.body["The League of Explorers"][i].attack, result.body["The League of Explorers"][i].health, result.body["The League of Explorers"][i].cost, result.body["The League of Explorers"][i].artist, result.body["The League of Explorers"][i].durability, allClass[result.body["The League of Explorers"][i].playerClass], allCardSet[result.body["The League of Explorers"][i].cardSet], allType[result.body["The League of Explorers"][i].type], allRace[result.body["The League of Explorers"][i].race], allRarity[result.body["The League of Explorers"][i].rarity], result.body["The League of Explorers"][i].img, result.body["The League of Explorers"][i].imgGold]);
    }

    for(var i = 0; i < result.body.Naxxramas.length; i++){
      values.push([result.body.Naxxramas[i].name, result.body.Naxxramas[i].text, result.body.Naxxramas[i].attack, result.body.Naxxramas[i].health, result.body.Naxxramas[i].cost, result.body.Naxxramas[i].artist, result.body.Naxxramas[i].durability, allClass[result.body.Naxxramas[i].playerClass], allCardSet[result.body.Naxxramas[i].cardSet], allType[result.body.Naxxramas[i].type], allRace[result.body.Naxxramas[i].race], allRarity[result.body.Naxxramas[i].rarity], result.body.Naxxramas[i].img, result.body.Naxxramas[i].imgGold]);
    }


  connection.query(sql, [values], function (err, result) {
    if (err) throw err;
    console.log("1 record inserted");
  });
});
