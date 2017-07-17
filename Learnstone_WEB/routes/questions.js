
var express = require('express');
var session = require('express-session');
var mysql = require('mysql');
var bodyParser = require('body-parser');

var connection = require("../connection");
var router = express.Router();


router.get('/', function(req, res) {

    if (!req.session.username) { res.redirect('/'); }
    else {

          connection.query('SELECT * FROM Question ORDER BY questionText', function(err, rows, fields) {

                    if (!err){

                       let result;
                       for (var i = 0; i < rows.length; i++) {result = rows;};
                       res.render('questions', {result: result});

                     }
                     else{

                       res.render('error', {err: err});

                     }
          });

        }

});

router.post('/', function(req, res) {

  if (!req.session.username) { res.redirect('/'); }
  else {

  //    if (req.body.attack == "") {req.body.attack = null ;}
    //  if (req.body.class == "") {req.body.class = null ;}
      //if (req.body.race == "") {req.body.race = null ;}
      //if (req.body.health == "") {req.body.health = null ;}
      //if (req.body.durability == "") {req.body.durability = null ;}

      var iquestion = {
              questionText: req.body.questiontext,
              nbUse: req.body.nbuse,
              nbResult: req.body.nbresult,
              img: req.body.img
          };

      var ianswer = {
              answerText: req.body.answertext,
              isCorrectAnswer: req.body.iscorrectanswer,
          };

      var values; var val;

      connection.query('INSERT INTO Question SET ?', iquestion, function(err, result) {


            if (!err) {


               values = [
               [req.body.answerTextOne, 0, result.insertId],
               [req.body.answerTextTwo, 0, result.insertId],
               [req.body.answerTextThree, 0, result.insertId],
               [req.body.answerTextFour, 0, result.insertId]
             ];

             val = [
             ['Test', 0, 0],
             ['Test', 0, 0]
           ];


            }
            //else { res.render('error', {err: err}); }

//            next();

      });

var sql = "INSERT INTO Answer (answerText, isCorrectAnswer, idQuestion) VALUES ?";
var sqlx = "INSERT INTO answer VALUES ?";
      connection.query(sqlx, [val], function (err, result) {

            console.log(err);
            console.log(values);
            if (!err) { res.redirect('/'); }
            else { res.render('error', {err: err}); }

      });

   }

});

router.post('/delete', function(req, res) {

  if(!req.session.username) { res.redirect('/'); }
  else {
// Voir QUESTIONSANSWERED
    connection.query('DELETE FROM Question WHERE idQuestion = ?', req.body.id, function(err, result) {

      if (!err) { res.redirect('/questions'); }
      else { res.render('error', {err: err}); }

    });

  }

});

module.exports = router;
