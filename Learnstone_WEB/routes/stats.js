
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

      function(callback) { connection.query('SELECT idRefRole, COUNT(*) AS numCount FROM Person GROUP BY idRefRole', callback) },
      function(callback) { connection.query('SELECT a.firstname, a.lastname, a.username, a.nbGoodAnswer, a.nbQuestionAnswered, a.idRefRole, ' +
                                            'COUNT(b.idPerson) AS lessonCount FROM Person a ' +
                                            'LEFT OUTER JOIN PersonLesson b ON a.idPerson = b.idPerson GROUP BY b.idPerson', callback) },
      function(callback) { connection.query('SELECT * FROM Question', callback) }

    ], function(err, results) {

      if (!check.error(err, res)){

        res.render('stats', { numberBasic: results[0][0][0].numCount, numberAdmin: results[0][0][1].numCount,
          personStat: results[1][0], questionStat: results[2][0] } );
      }

    });

  }

});

module.exports = router;
