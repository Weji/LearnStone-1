
var express = require('express');
var session = require('express-session');
var mysql = require('mysql');
var bodyParser = require('body-parser');

var connection = require("../connection");
var check = require("../check");

var router = express.Router();


router.get('/', function(req, res) {

  if ( check.session(req.session.username, res) ){

    connection.query('SELECT a.idQuestion, a.questionText, b.answerText, b.isCorrectAnswer FROM Question a ' +
                     'LEFT OUTER JOIN answer b ON a.idQuestion = b.idQuestion ' +
                     'ORDER BY a.questionText',

    function(err, rows, fields) {

      if (!check.error(err, res)){

        res.render('questions', { questionsAndAnswers: rows } );

      }

    });

  }

});


router.post('/', function(req, res) {

  if ( check.session(req.session.username, res) ){

    if (req.body.img == "") {req.body.img = null ;}

    var iQuestion = {
            questionText: req.body.questionText,
            nbUse: req.body.nbUse,
            nbResult: req.body.nbResult,
            img: req.body.img
        };

    connection.query('INSERT INTO Question SET ?', iQuestion, function(err, result) {

      if (!check.error(err, res)){

        var numberMaxAnswer = 2;
        var valAnswer = [
          [req.body.answerTextOne, 0, result.insertId],
          [req.body.answerTextTwo, 0, result.insertId]
        ];

        if(req.body.answerTextThree){
          valAnswer.push([req.body.answerTextThree, 0, result.insertId]);
          numberMaxAnswer++;
        }

        if(req.body.answerTextFour){
          valAnswer.push([req.body.answerTextFour, 0, result.insertId]);
          numberMaxAnswer++;
        }

        if(numberMaxAnswer >= req.body.idCorrectAnswer) {

          valAnswer[req.body.idCorrectAnswer -1][1] = 1;

          connection.query('INSERT INTO Answer (answerText, isCorrectAnswer, idQuestion) VALUES ?', [valAnswer], function(err2, result2) {

            if (!check.error(err2, res)){

              res.redirect('/questions');

            }

          });

        } else {

          connection.query('DELETE FROM Question WHERE idQuestion = ?', result.insertId, function(err2, result2) {

            if (!check.error(err2, res)){

              res.redirect('/questions');

            }

          });

        }

      }

    });

  }

});


router.post('/delete', function(req, res) {

  if ( check.session(req.session.username, res) ){

    connection.query('DELETE FROM QuestionAnswered WHERE idQuestion = ?', req.body.idQuestion, function(err, result) {
      if (check.error(err, res))
      return;
    });

    connection.query('DELETE FROM Answer WHERE idQuestion = ?', req.body.idQuestion, function(err, result) {
      if (check.error(err, res))
      return;
    });

    connection.query('DELETE FROM Question WHERE idQuestion = ?', req.body.idQuestion, function(err, result) {
      if (check.error(err, res))
      return;
    });

    res.redirect('/questions');

  }

});

module.exports = router;
