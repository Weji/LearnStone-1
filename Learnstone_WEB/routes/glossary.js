
var express = require('express');
var session = require('express-session');
var mysql = require('mysql');
var bodyParser = require('body-parser');

var connection = require("../connection");
var check = require("../check");

var router = express.Router();


router.get('/', function(req, res) {

  if ( check.session(req.session.username, res) ){

    connection.query('SELECT * FROM Definition ORDER BY word', function(err, result) {

      if (!check.error(err, res)){

        res.render('glossary', { rDefinition: result } );

      }

    });

  }

});


router.post('/', function(req, res) {

  if ( check.session(req.session.username, res) ){

      var iDefinition = {
              word: req.body.word,
              wordText: req.body.wordText
          };

      connection.query('INSERT INTO Definition SET ?', iDefinition, function(err, result) {

        if (!check.error(err, res)){

          res.redirect('/glossary');

        }

      });

  }

});


router.post('/delete', function(req, res) {

  if ( check.session(req.session.username, res) ){

    connection.query('DELETE FROM Definition WHERE idDefinition = ?', req.body.idDefinition, function(err, result) {

      if (!check.error(err, res)){

        res.redirect('/glossary');

      }

    });

  }

});

module.exports = router;
