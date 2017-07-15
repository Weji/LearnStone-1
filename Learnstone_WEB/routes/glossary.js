var express = require('express');
var session = require('express-session');
var mysql      = require('mysql');
var bodyParser = require('body-parser');
var sess;

var router = express.Router();

router.get('/', function(req, res) {
   //res.sendFile(path.join(__dirname + '/views/generic.html'));
sess = req.session;
   if(sess.email) {
        res.render('glossary');
   }
   else {
       res.redirect('/');
   }

});

module.exports = router;
