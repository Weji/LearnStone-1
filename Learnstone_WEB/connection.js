
var mysql = require('mysql');

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'learnstone'
});

connection.connect(function(err){

  if(!err) {

    console.log("Database is connected");

  }
  else {

    console.log("Database cannot be access");

  }

});

module.exports = connection;
