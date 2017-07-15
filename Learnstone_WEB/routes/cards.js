var express = require('express');
var session = require('express-session');
var mysql      = require('mysql');
var bodyParser = require('body-parser');
var sess;
var result;

var router = express.Router();

var connection = require("../connection");



router.get('/', function(req, res) {

  sess = req.session;
  if(sess.username) {

connection.query(

  'SELECT * ' +
  'FROM Card a ' +
  'INNER JOIN refclass b ON a.IdRefClass = b.IdRefClass ' +
  'INNER JOIN Refcardsset c ON a.IdRefCardsSet = c.IdRefCardsSet ' +
  'INNER JOIN reftype d ON a.IdRefType = d.IdRefType ' +
  'INNER JOIN refrarity e ON a.IdRefRarity = e.IdRefRarity ' +
  'ORDER BY a.Name',




  function(err, rows, fields) {

       if (!err){
            for (var i = 0; i < rows.length; i++) {result = rows;};
            res.render('cards', {result: result});
          }
          else{
            console.log(err);
            //res.redirect('/generic');
          }
       });



     }
   else {
       res.redirect('/');
   }

});

router.post('/', function(req, res) {
   //res.sendFile(path.join(__dirname + '/views/generic.html'));
sess = req.session;
let atk;
if (req.body.attack == "") {atk = null ;} else {atk = req.body.attack;}

var user = {
        Name: req.body.name,
        Text: req.body.description,
        Attack: atk,
        Health: req.body.health,
        ManaCost: req.body.cost,
        Artist: req.body.artist,
        Durability: req.body.durability,
        IdRefClass: req.body.class,
        IdRefCardsSet: req.body.cardset,
        IdRefType: req.body.type,
        IdRefRace: req.body.race,
        IdRefRarity: req.body.rarity,
        Img: "ZZ",
        ImgGold: "Z"
    };

var sql = "INSERT INTO Card SET ?";
   if(sess.username) {
     connection.query(sql, user, function(err, result) {

            if (!err){

                 res.redirect('/cards');
               }
               else{
                 console.log(err);
                 //res.redirect('/generic');
               }
            });
   }
   else {
       res.redirect('/');
   }

});

router.post('/delete', function(req, res) {
   //res.sendFile(path.join(__dirname + '/views/generic.html'));
   var user = {
           IdCard: req.body.id
       };

   var sql = "DELETE FROM Card WHERE ?";

sess = req.session;

   if(sess.username) {
     connection.query(sql, user, function(err, result) {

            if (!err){

                 res.redirect('/cards');
               }
               else{
                 console.log(err);
                 //res.redirect('/generic');
               }
            });
   }
   else {
       res.redirect('/');
   }

});


module.exports = router;
