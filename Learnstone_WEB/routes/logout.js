var express = require('express');
var session = require('express-session');
var mysql      = require('mysql');
var bodyParser = require('body-parser');


var router = express.Router();

router.get('/',function(req,res){
req.session.destroy(function(err) {
  if(err) {
    console.log(err);
  } else {
    //connection.end();
    res.redirect('/');
  }
})
});

module.exports = router;
