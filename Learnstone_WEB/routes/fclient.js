
var express = require('express');
var session = require('express-session');
var mysql = require('mysql');
var bodyParser = require('body-parser');

var connection = require("../connection");
var router = express.Router();

var wsPassword = "FeNBGjzDG354@ofe*$32Rfsss4F";


function SubmitAnswer(err, res, result, type) {

  if (err) {

    res.json({result: false});

  }
  else {

    switch(type) {

        case "U":
        case "I":
            if (result.affectedRows != 0)
                res.json({result: true});
            else
              res.json({result: false});
            break;

        case "S":
            if (result.length != 0)
                res.json(result);
            else
              res.json({result: false});
            break;

        case "B":
            if (result.length != 0)
                res.json({result: true});
            else
              res.json({result: false});
            break;

        default:
            res.json({result: false});
    }

  }

}

function CheckPassword(req, res) {
  if(req.body.wsPassword != wsPassword){

    res.json({result: "Wrong Password"});
    return(false);

  } return(true);

}



router.post('/profilUpdater', function(req, res) {

  if(CheckPassword(req,res))
  if (req.body.isAnswerWell) {

    connection.query(
      'UPDATE Person ' +
      'SET nbGoodAnswer = nbGoodAnswer + 1, nbQuestionAnswered = nbQuestionAnswered + 1 ' +
      'WHERE idPerson = ?'

        , req.body.idPerson, function(err, result) {

          SubmitAnswer(err, res, result, 'U');

    });

  }
  else {

    connection.query(
      'UPDATE Person ' +
      'SET nbQuestionAnswered = nbQuestionAnswered + 1 ' +
      'WHERE idPerson = ?'

        , req.body.idPerson, function(err, result) {

          SubmitAnswer(err, res, result, 'U');

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

  if(CheckPassword(req,res))
  connection.query('INSERT INTO QuestionAnswered SET ?', iQuestionAnswered, function(err, result) {

          SubmitAnswer(err, res, result, 'I');

  });

});


router.post('/getPerson', function(req, res) {

  if(CheckPassword(req,res))
  connection.query('SELECT * FROM Person WHERE idPerson = ?', req.body.idPerson, function(err, result) {

          SubmitAnswer(err, res, result, 'S');

  });

});


router.post('/getIdPerson', function(req, res) {

  if(CheckPassword(req,res))
  connection.query('SELECT idPerson FROM Person WHERE username = ? and password = ?', [req.body.username, req.body.password], function(err, result) {

            SubmitAnswer(err, res, result, 'S');

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

  if(CheckPassword(req,res))
  connection.query('INSERT INTO Person SET ?', iPerson, function(err, result) {

            SubmitAnswer(err, res, result, 'I');
  });

});


router.post('/isRealUsername', function(req, res) {

  if(CheckPassword(req,res))
  connection.query('SELECT username FROM Person WHERE username = ?', req.body.username, function(err, result) {

            SubmitAnswer(err, res, result, 'B');

  });

});


router.post('/getMinIdQuestion', function(req, res) {

  if(CheckPassword(req,res))
  connection.query('SELECT min(idQuestion) FROM Question', function(err, result) {

            SubmitAnswer(err, res, result, 'S');
  });

});


router.post('/getMaxIdQuestion', function(req, res) {

  if(CheckPassword(req,res))
  connection.query('SELECT max(idQuestion) FROM Question', function(err, result) {

            SubmitAnswer(err, res, result, 'S');

  });

});


router.post('/getQuestion', function(req, res) {

  if(CheckPassword(req,res))
  connection.query('SELECT * FROM Question WHERE idQuestion = ?', req.body.idQuestion, function(err, result) {

            SubmitAnswer(err, res, result, 'S');

  });

});


router.post('/getAnswerFromQuestion', function(req, res) {

  if(CheckPassword(req,res))
  connection.query('SELECT * FROM Answer WHERE idQuestion = ?', req.body.idQuestion, function(err, result) {

            SubmitAnswer(err, res, result, 'S');
  });

});


router.post('/getListNumberLesson', function(req, res) {

  if(CheckPassword(req,res))
  connection.query('SELECT numberLesson FROM Lesson ORDER BY numberLesson', function(err, result) {

            SubmitAnswer(err, res, result, 'S');

  });

});


router.post('/getLesson', function(req, res) {

  if(CheckPassword(req,res))
  connection.query('SELECT * FROM Lesson WHERE numberLesson = ?', req.body.numberLesson, function(err, result) {

          SubmitAnswer(err, res, result, 'S');

  });

});


router.post('/lessonLog', function(req, res) {

  var now = new Date();

  var iPersonLesson = {
          idPerson: req.body.idPerson,
          idLesson: req.body.idLesson,
          dateRead: now
      };

  if(CheckPassword(req,res))
  connection.query('INSERT INTO PersonLesson SET ?', iPersonLesson, function(err, result) {

          SubmitAnswer(err, res, result, 'I');

  });

});


router.post('/getLastReadLesson', function(req, res) {

  if(CheckPassword(req,res))
  connection.query(
    'SELECT l.numberLesson  FROM PersonLesson i ' +
    'INNER JOIN Lesson l ON i.idLesson = l.idLesson ' +
    'WHERE idPerson = ? AND dateRead IN (SELECT max(dateRead) FROM PersonLesson WHERE idPerson = ?)',

  [req.body.idPerson, req.body.idPerson], function(err, result) {

            SubmitAnswer(err, res, result, 'S');
  });

});


router.post('/getLblCardsSet', function(req, res) {

  if(CheckPassword(req,res))
  connection.query('SELECT lblCardsSet FROM Refcardsset WHERE idRefCardsSet = ?', req.body.idRefCardsSet, function(err, result) {

            SubmitAnswer(err, res, result, 'S');

  });

});


router.post('/getAllLblCardsSet', function(req, res) {

  if(CheckPassword(req,res))
  connection.query('SELECT lblCardsSet FROM Refcardsset', function(err, result) {

            SubmitAnswer(err, res, result, 'S');

  });

});


router.post('/getLblClass', function(req, res) {

  if(CheckPassword(req,res))
  connection.query('SELECT lblClass FROM Refclass WHERE idRefClass = ?', req.body.idRefClass, function(err, result) {

            SubmitAnswer(err, res, result, 'S');
  });

});


router.post('/getAllLblClass', function(req, res) {

  if(CheckPassword(req,res))
  connection.query('SELECT lblClass FROM Refclass', function(err, result) {

            SubmitAnswer(err, res, result, 'S');

  });

});


router.post('/getLblRace', function(req, res) {

  if(CheckPassword(req,res))
  connection.query('SELECT lblRace FROM Refrace WHERE idRefRace = ?', req.body.idRefRace, function(err, result) {

            SubmitAnswer(err, res, result, 'S');

  });

});


router.post('/getAllLblRace', function(req, res) {

  if(CheckPassword(req,res))
  connection.query('SELECT lblRace FROM Refrace', function(err, result) {

            SubmitAnswer(err, res, result, 'S');

  });

});


router.post('/getLblRarity', function(req, res) {

  if(CheckPassword(req,res))
  connection.query('SELECT lblRarity FROM Refrarity WHERE idRefRarity = ?', req.body.idRefRarity, function(err, result) {

            SubmitAnswer(err, res, result, 'S');

  });

});


router.post('/getAllLblRarity', function(req, res) {

  if(CheckPassword(req,res))
  connection.query('SELECT lblRarity FROM Refrarity', function(err, result) {

            SubmitAnswer(err, res, result, 'S');

  });

});


router.post('/getLblRole', function(req, res) {

  if(CheckPassword(req,res))
  connection.query('SELECT lblRole FROM Refrole WHERE idRefRole = ?', req.body.idRefRole, function(err, result) {

            SubmitAnswer(err, res, result, 'S');

  });

});


router.post('/getLblType', function(req, res) {

  if(CheckPassword(req,res))
  connection.query('SELECT lblType FROM Reftype WHERE idRefType = ?', req.body.idRefType, function(err, result) {

            SubmitAnswer(err, res, result, 'S');

  });

});


router.post('/getAllLblType', function(req, res) {

  if(CheckPassword(req,res))
  connection.query('SELECT lblType FROM Reftype', function(err, result) {

            SubmitAnswer(err, res, result, 'S');

  });

});


router.post('/getIdAndURLCard', function(req, res) {

  if(CheckPassword(req,res))
  connection.query('SELECT idCard, img FROM Card ORDER BY idCard', function(err, result) {

              SubmitAnswer(err, res, result, 'S');
  });

});


router.post('/getFilteredCard', function(req, res) {

  var query = "SELECT * FROM Card WHERE ";

  if(req.body.name)
  query += "name = " + "'" + req.body.name + "'" + " AND ";

  if(req.body.manaCost)
  query += "manaCost = " + req.body.manaCost + " AND ";

  if(req.body.idRefRarity)
  query += "idRefRarity = " + req.body.idRefRarity + " AND ";

  if(req.body.idRefClass)
  query += "idRefClass = " + req.body.idRefClass + " AND ";

  query = query.substring(0, query.length - 4);


  if(CheckPassword(req,res))
  connection.query(query, function(err, result) {

            SubmitAnswer(err, res, result, 'S');

  });

});


router.post('/getFilteredWord', function(req, res) {

  if(CheckPassword(req,res))
  connection.query('SELECT * from Definition where word like ?', req.body.letter + '%', function(err, result) {

            SubmitAnswer(err, res, result, 'S');
  });

});


router.post('/getCard', function(req, res) {

  if(CheckPassword(req,res))
  connection.query('SELECT * FROM Card WHERE idCard = ?', req.body.idCard, function(err, result) {

              SubmitAnswer(err, res, result, 'S');

  });

});


module.exports = router;
