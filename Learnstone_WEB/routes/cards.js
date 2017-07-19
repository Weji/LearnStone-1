
var express = require('express');
var session = require('express-session');
var mysql = require('mysql');
var bodyParser = require('body-parser');

var async = require('async');

var connection = require("../connection");
var router = express.Router();


router.get('/', function(req, res) {

    if (!req.session.username) { res.redirect('/'); }
    else {

    /*  connection.query(

       'SELECT * ' +
       'FROM Card a ' +
       'LEFT OUTER JOIN refclass b ON a.idRefClass = b.idRefClass ' +
       'INNER JOIN refcardsset c ON a.idRefCardsSet = c.idRefCardsSet ' +
       'INNER JOIN reftype d ON a.idRefType = d.idRefType ' +
       'INNER JOIN refrarity e ON a.idRefRarity = e.idRefRarity ' +
       'ORDER BY a.name',

         function(err, rows, fields) {

              if (!err){
                   let result;
                   for (var i = 0; i < rows.length; i++) {result = rows;};
                   res.render('cards', {result: result});
                 }
                 else{
                   res.render('error', {err: err});
                 }
              });
*/

async.parallel([
  function(callback) { connection.query('SELECT lblClass FROM Refclass', callback) },
  function(callback) { connection.query('SELECT lblRarity FROM Refrarity', callback) }
], function(err, results) {
  if(results)
  {
  let plz;
  for (var i = 0; i < results[0][0].length; i++) {plz = results[0][0];};
  //res.render('error.ejs', { plz : plz });
  var test = JSON.stringify(plz[0]);
  console.log(test.substring(13, test.length -2)); 

  }
  else
  res.render('error');
});



      }

});

router.post('/', function(req, res) {

  if (!req.session.username) { res.redirect('/'); }
  else {

      if (req.body.attack == "") {req.body.attack = null ;}
      if (req.body.class == "") {req.body.class = null ;}
      if (req.body.race == "") {req.body.race = null ;}
      if (req.body.health == "") {req.body.health = null ;}
      if (req.body.durability == "") {req.body.durability = null ;}

      var icard = {
              name: req.body.name,
              text: req.body.description,
              attack: req.body.attack,
              health: req.body.health,
              manaCost: req.body.cost,
              artist: req.body.artist,
              durability: req.body.durability,
              idRefClass: req.body.class,
              idRefCardsSet: req.body.cardset,
              idRefType: req.body.type,
              idRefRace: req.body.race,
              idRefRarity: req.body.rarity,
              img: req.body.url,
              imgGold: req.body.url
          };

      connection.query('INSERT INTO Card SET ?', icard, function(err, result) {

            if (!err) { res.redirect('/cards'); }
            else { res.render('error', {err: err}); }

      });

   }

});

router.post('/delete', function(req, res) {

  if(!req.session.username) { res.redirect('/'); }
  else {

    connection.query('DELETE FROM Card WHERE idCard = ?', req.body.id, function(err, result) {

      if (!err) { res.redirect('/cards'); }
      else { res.render('error', {err: err}); }

    });

  }

});

module.exports = router;
