
var express = require('express');
var session = require('express-session');
var mysql = require('mysql');
var bodyParser = require('body-parser');

var connection = require("../connection");
var check = require("../check");

var router = express.Router();


router.get('/', function(req, res) {

  if ( check.session(req.session.username, res) ){

    connection.query('SELECT * FROM Lesson ORDER BY numberLesson', function(err, results) {

      if (!check.error(err, res)){

          res.render('lessons', { rLesson: results } );
      }

    });

  }

});


router.post('/', function(req, res) {

  if ( check.session(req.session.username, res) ){

    if (req.body.img == "") {req.body.img = null ;}

      var iLesson = {
              numberLesson: req.body.numberLesson,
              text: req.body.text,
              img: req.body.img

          };

      connection.query('SELECT numberLesson FROM Lesson WHERE numberLesson = ?', req.body.numberLesson, function(err, result) {

        if (!check.error(err, res)){

          if(typeof result !== 'undefined' && result.length > 0){

            res.redirect('/lessons');

          } else {

            connection.query('INSERT INTO Lesson SET ?', iLesson, function(err2, result2) {

              if (!check.error(err2, res)){

                res.redirect('/lessons');

              }

            });


          }

        }

      });

  }

});


router.post('/delete', function(req, res) {

  if ( check.session(req.session.username, res) ){

    connection.query('DELETE FROM PersonLesson WHERE idLesson = ?', req.body.idLesson, function(err, result) {

      if (!check.error(err, res)){

        connection.query('DELETE FROM Lesson WHERE idLesson = ?', req.body.idLesson, function(err, result) {

          if (!check.error(err, res)){

            res.redirect('/lessons');

          }

        });

      }

    });

  }

});

module.exports = router;
