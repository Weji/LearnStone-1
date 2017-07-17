
var express = require('express');
var session = require('express-session');
var mysql = require('mysql');
var bodyParser = require('body-parser');

var connection = require("../connection");
var router = express.Router();

var wsPassword = "FeNBGjzDG354@ofe*$32Rfsss4F";


router.post('/profilUpdater', function(req, res) {

  if(req.body.wsPassword != wsPassword)
    res.json({login: "Wrong Password"});
  else
  if (req.body.isAnswerWell) {

    connection.query(
      'UPDATE Person ' +
      'SET nbGoodAnswer = nbGoodAnswer + 1, nbQuestionAnswered = nbQuestionAnswered + 1 ' +
      'WHERE idPerson = ?'

        , req.body.idPerson, function(err, result) {

          if (err) { res.json({result: false}); }
          else { res.json({result: true}); }

    });

  }
  else {

    connection.query(
      'UPDATE Person ' +
      'SET nbQuestionAnswered = nbQuestionAnswered + 1 ' +
      'WHERE idPerson = ?'

        , req.body.idPerson, function(err, result) {

          if (err) { res.json({result: false}); }
          else { res.json({result: true}); }

    });

  }

});

router.post('/questionLog', function(req, res) {

  var now = new Date();

  var iQuestionAnswered = {
          idPerson: req.body.idPerson,
          idQuestion: req.body.idQuestion,
          isAnswerWell: req.body.isAnswerWell,
          dateAnswered: now
      };

  if(req.body.wsPassword != wsPassword)
    res.json({login: "Wrong Password"});
  else
  connection.query('INSERT INTO QuestionAnswered SET ?', iQuestionAnswered, function(err, result) {

    if (err) { res.json({result: false}); }
    else { res.json({result: true}); }

  });

});

router.post('/getPerson', function(req, res) {

  if(req.body.wsPassword != wsPassword)
    res.json({login: "Wrong Password"});
  else
  connection.query('SELECT * FROM Person WHERE idPerson = ?', req.body.idPerson, function(err, result) {

        if (err) { res.json({result: false}); }
        else {

            if (result.length != 0)
                res.json(result);
            else
              res.json({result: false});

          }

  });

});

router.post('/getIdPerson', function(req, res) {

  if(req.body.wsPassword != wsPassword)
    res.json({login: "Wrong Password"});
  else
  connection.query('SELECT idPerson FROM Person WHERE username = ? and password = ?', [req.body.username, req.body.password], function(err, result) {

    if (err) { res.json({result: false}); }
    else {

        if (result.length != 0)
            res.json(result);
        else
          res.json({result: false});

      }

  });

});

router.post('/createPerson', function(req, res) {

  var iPerson = {
          firstname: req.body.firstname ,
          lastname: req.body.lastname,
          nbGoodAnswer: 0,
          nbQuestionAnswered: 0,
          idRefRole: req.body.idRefRole ,
          username: req.body.username,
          password: req.body.password,
          mail: req.body.mail
      };

  if(req.body.wsPassword != wsPassword)
    res.json({login: "Wrong Password"});
  else
  connection.query('INSERT INTO Person SET ?', iPerson, function(err, result) {

        if (err) { res.json({result: false}); }
        else { res.json({result: true}); }

  });

});

router.post('/isRealUsername', function(req, res) {

  if(req.body.wsPassword != wsPassword)
    res.json({login: "Wrong Password"});
  else
  connection.query('SELECT username FROM Person WHERE username = ?', req.body.username, function(err, result) {

        if (err) { res.json({result: false}); }
        else {

            if (result.length != 0 && result[0].username == req.body.username)
                res.json({result: true});
            else
              res.json({result: false});

          }

  });

});

router.post('/getMinIdQuestion', function(req, res) {

  if(req.body.wsPassword != wsPassword)
    res.json({login: "Wrong Password"});
  else
  connection.query('SELECT min(idQuestion) FROM Question', function(err, result) {

    if (err) { res.json({result: false}); }
    else {

        if (result.length != 0)
            res.json(result);
        else
          res.json({result: false});

      }

  });

});

router.post('/getMaxIdQuestion', function(req, res) {

  if(req.body.wsPassword != wsPassword)
    res.json({login: "Wrong Password"});
  else
  connection.query('SELECT max(idQuestion) FROM Question', function(err, result) {

    if (err) { res.json({result: false}); }
    else {

        if (result.length != 0)
            res.json(result);
        else
          res.json({result: false});

      }

  });

});

router.post('/getQuestion', function(req, res) {

  if(req.body.wsPassword != wsPassword)
    res.json({login: "Wrong Password"});
  else
  connection.query('SELECT * FROM Question WHERE idQuestion = ?', req.body.idQuestion, function(err, result) {

        if (err) { res.json({result: false}); }
        else {

            if (result.length != 0)
                res.json(result);
            else
              res.json({result: false});

          }

  });

});

router.post('/getAnswerFromQuestion', function(req, res) {

  if(req.body.wsPassword != wsPassword)
    res.json({login: "Wrong Password"});
  else
  connection.query('SELECT * FROM Answer WHERE idQuestion = ?', req.body.idQuestion, function(err, result) {

        if (err) { res.json({result: false}); }
        else {

            if (result.length != 0)
                res.json(result);
            else
              res.json({result: false});

          }

  });

});

router.post('/getListNumberLesson', function(req, res) {

  if(req.body.wsPassword != wsPassword)
    res.json({login: "Wrong Password"});
  else
  connection.query('SELECT numberLesson FROM Lesson ORDER BY numberLesson', function(err, result) {

        if (err) { res.json({result: false}); }
        else {

            if (result.length != 0)
                res.json(result);
            else
              res.json({result: false});

          }

  });

});

router.post('/getLesson', function(req, res) {

  if(req.body.wsPassword != wsPassword)
    res.json({login: "Wrong Password"});
  else
  connection.query('SELECT * FROM Lesson WHERE numberLesson = ?', req.body.numberLesson, function(err, result) {

        if (err) { res.json({result: false}); }
        else {

            if (result.length != 0)
                res.json(result);
            else
              res.json({result: false});

          }

  });

});

router.post('/lessonLog', function(req, res) {

  var now = new Date();

  var iPersonLesson = {
          idPerson: req.body.idPerson,
          idLesson: req.body.idLesson,
          dateRead: now
      };

  if(req.body.wsPassword != wsPassword)
    res.json({login: "Wrong Password"});
  else
  connection.query('INSERT INTO PersonLesson SET ?', iPersonLesson, function(err, result) {

    if (err) { res.json({result: false}); }
    else { res.json({result: true}); }

  });

});

router.post('/getLastReadLesson', function(req, res) {

  if(req.body.wsPassword != wsPassword)
    res.json({login: "Wrong Password"});
  else
  connection.query(
    'SELECT l.numberLesson  FROM PersonLesson i ' +
    'INNER JOIN Lesson l ON i.idLesson = l.idLesson ' +
    'WHERE idPerson = ? AND dateRead IN (SELECT max(dateRead) FROM PersonLesson WHERE idPerson = ?)',

  [req.body.idPerson, req.body.idPerson], function(err, result) {

        if (err) { console.log(err); res.json({result: false}); }
        else {

            if (result.length != 0)
                res.json(result);
            else
              res.json({result: false});

          }

  });

});

router.post('/getLblCardsSet', function(req, res) {

  if(req.body.wsPassword != wsPassword)
    res.json({login: "Wrong Password"});
  else
  connection.query('SELECT lblCardsSet FROM Refcardsset WHERE idRefCardsSet = ?', req.body.idRefCardsSet, function(err, result) {

        if (err) { res.json({result: false}); }
        else {

            if (result.length != 0)
                res.json(result);
            else
              res.json({result: false});

          }

  });

});

router.post('/getLblClass', function(req, res) {

  if(req.body.wsPassword != wsPassword)
    res.json({login: "Wrong Password"});
  else
  connection.query('SELECT lblClass FROM Refclass WHERE idRefClass = ?', req.body.idRefClass, function(err, result) {

        if (err) { res.json({result: false}); }
        else {

            if (result.length != 0)
                res.json(result);
            else
              res.json({result: false});

          }

  });

});

router.post('/getLblRace', function(req, res) {

  if(req.body.wsPassword != wsPassword)
    res.json({login: "Wrong Password"});
  else
  connection.query('SELECT lblRace FROM Refrace WHERE idRefRace = ?', req.body.idRefRace, function(err, result) {

        if (err) { res.json({result: false}); }
        else {

            if (result.length != 0)
                res.json(result);
            else
              res.json({result: false});

          }

  });

});

router.post('/getLblRarity', function(req, res) {

  if(req.body.wsPassword != wsPassword)
    res.json({login: "Wrong Password"});
  else
  connection.query('SELECT lblRarity FROM Refrarity WHERE idRefRarity = ?', req.body.idRefRarity, function(err, result) {

        if (err) { res.json({result: false}); }
        else {

            if (result.length != 0)
                res.json(result);
            else
              res.json({result: false});

          }

  });

});

router.post('/getLblRole', function(req, res) {

  if(req.body.wsPassword != wsPassword)
    res.json({login: "Wrong Password"});
  else
  connection.query('SELECT lblRole FROM Refrole WHERE idRefRole = ?', req.body.idRefRole, function(err, result) {

        if (err) { res.json({result: false}); }
        else {

            if (result.length != 0)
                res.json(result);
            else
              res.json({result: false});

          }

  });

});

router.post('/getLblType', function(req, res) {

  if(req.body.wsPassword != wsPassword)
    res.json({login: "Wrong Password"});
  else
  connection.query('SELECT lblType FROM Reftype WHERE idRefType = ?', req.body.idRefType, function(err, result) {

        if (err) { res.json({result: false}); }
        else {

            if (result.length != 0)
                res.json(result);
            else
              res.json({result: false});

          }

  });

});

router.post('/getIdAndURLCard', function(req, res) {

  if(req.body.wsPassword != wsPassword)
    res.json({login: "Wrong Password"});
  else
  connection.query('SELECT idCard, img FROM Card ORDER BY idCard', function(err, result) {

        if (err) { res.json({result: false}); }
        else {

            if (result.length != 0)
                res.json(result);
            else
              res.json({result: false});

          }

  });

});

router.post('/getFilteredCard', function(req, res) {

  if(req.body.wsPassword != wsPassword)
    res.json({login: "Wrong Password"});
  else
  connection.query('SELECT * FROM Card ' +
                   'WHERE name = ? AND manaCost = ? AND idRefRarity = ? AND idRefClass = ?',
                   [req.body.name, req.body.manaCost, req.body.idRefRarity, req.body.idRefClass], function(err, result) {

        if (err) { res.json({result: false}); }
        else {

            if (result.length != 0)
                res.json(result);
            else
              res.json({result: false});

          }

  });

});

router.post('/getFilteredWord', function(req, res) {

if(req.body.wsPassword != wsPassword)
  res.json({login: "Wrong Password"});
else
  connection.query('SELECT * from Definition where word like ?', req.body.letter + '%', function(err, result) {

        if (err) { console.log(err); res.json({result: false}); }
        else {

            if (result.length != 0)
                res.json(result);
            else
              res.json({result: false});

          }

  });

});

module.exports = router;
