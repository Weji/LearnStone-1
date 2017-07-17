
var express = require('express');
var session = require('express-session');
var mysql = require('mysql');
var bodyParser = require('body-parser');

var connection = require("../connection");
var router = express.Router();


router.get('/',function(req,res){

    if (req.session.username) { res.redirect('/cards'); }
    else { res.render('index'); }

});

router.post('/',function(req,res){

    connection.query('SELECT * FROM Person', function(err, rows, fields) {

      if (err) { res.render('error', {err: err}); }
      else {

          for (var i = 0; i < rows.length; i++){

               if (rows[i].username === req.body.username && rows[i].password === req.body.password && rows[i].idRefRole === 2 ){
                 req.session.username = req.body.username;
               }

            };

          res.redirect('/cards');

          }

    });

});

module.exports = router;