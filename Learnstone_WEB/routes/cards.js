
var express = require('express');
var session = require('express-session');
var mysql = require('mysql');
var bodyParser = require('body-parser');
var async = require('async');

var connection = require("../connection");
var check = require("../check");

var router = express.Router();


router.get('/', function(req, res) {

  if ( check.session(req.session.username, res) ){

    async.parallel([
      function(callback) { connection.query('SELECT lblCardsSet FROM Refcardsset', callback) },
      function(callback) { connection.query('SELECT lblType FROM Reftype', callback) },
      function(callback) { connection.query('SELECT lblRarity FROM Refrarity', callback) },
      function(callback) { connection.query('SELECT lblClass FROM Refclass', callback) },
      function(callback) { connection.query('SELECT lblRace FROM Refrace', callback) },
      function(callback) { connection.query('SELECT * FROM Card a ' +
                                            'LEFT OUTER JOIN refclass b ON a.idRefClass = b.idRefClass ' +
                                            'LEFT OUTER JOIN refcardsset c ON a.idRefCardsSet = c.idRefCardsSet ' +
                                            'LEFT OUTER JOIN reftype d ON a.idRefType = d.idRefType ' +
                                            'LEFT OUTER JOIN refrarity e ON a.idRefRarity = e.idRefRarity ' +
                                            'ORDER BY a.name', callback) }
    ], function(err, results) {

      if (!check.error(err, res)){

          res.render('cards', { rCardsSet: results[0][0], rType: results[1][0], rRarity: results[2][0],
            rClass: results[3][0], rRace: results[4][0], rCard: results[5][0] } );
      }

    });

  }

});


router.post('/', function(req, res) {

  if ( check.session(req.session.username, res) ){

    if (req.body.attack == "") {req.body.attack = null ;}
    if (req.body.health == "") {req.body.health = null ;}
    if (req.body.durability == "") {req.body.durability = null ;}
    if (req.body.idRefRace == "") {req.body.idRefRace = null ;}

      var iCard = {
              name: req.body.name,
              text: req.body.description,
              attack: req.body.attack,
              health: req.body.health,
              manaCost: req.body.manaCost,
              artist: req.body.artist,
              durability: req.body.durability,
              idRefClass: req.body.idRefClass,
              idRefCardsSet: req.body.idRefCardsSet,
              idRefType: req.body.idRefType,
              idRefRace: req.body.idRefRace,
              idRefRarity: req.body.idRefRarity,
              img: req.body.img,
              imgGold: req.body.img
          };

      connection.query('INSERT INTO Card SET ?', iCard, function(err, result) {

        if (!check.error(err, res)){

          res.redirect('/cards');

        }

      });

  }

});


router.post('/delete', function(req, res) {

  if ( check.session(req.session.username, res) ){

    connection.query('DELETE FROM Card WHERE idCard = ?', req.body.idCard, function(err, result) {

      if (!check.error(err, res)){

        res.redirect('/cards');

      }

    });

  }

});

module.exports = router;
