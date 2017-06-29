var express = require('express');
var path = require('path');
var session = require('express-session');
var bodyParser = require('body-parser');
var mysql      = require('mysql');
var app = express();
var sess;

var result;
var result2;

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'learnstone'
});

app.use('/_assets', express.static('_assets'));
app.engine('html', require('ejs').renderFile);
app.use(session({secret: 'trysession'}));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

connection.connect(function(err){
if(!err) {
    console.log("Database is connected ... nn");
} else {
    console.log("Error connecting database ... nn");
}
});

// Routes


app.get('/',function(req,res){
sess = req.session;
//Session set when user Request our app via URL

if(sess.email) {
    res.redirect('/cards');
}
else {
    res.render('index.html');
}
});

app.post('/',function(req,res){
  sess = req.session;
  sess.email=req.body.email;
  res.redirect('/cards')

});

app.get('/cards', function(req, res) {

sess = req.session;
   if(sess.email) {


     connection.query('SELECT * from users LIMIT 2', function(err, rows, fields) {

       if (!err){

           for (var i = 0; i < rows.length; i++) {result = rows;};
           connection.query('SELECT * from users', function(err, rows, fields) {
             connection.end();
              console.log(err + rows);
              for (var j = 0; j < rows.length; j++) {result2 = rows;};
              res.render('cards.ejs', {result: result, result2: result2});
          });

       }
       else console.log(err);

       });


   }
   else {
       res.redirect('/');
   }

});

app.get('/questions', function(req, res) {
   //res.sendFile(path.join(__dirname + '/views/generic.html'));
sess = req.session;
   if(sess.email) {
        res.render('questions.html');
   }
   else {
       res.redirect('/');
   }

});

app.get('/stats', function(req, res) {
   //res.sendFile(path.join(__dirname + '/views/generic.html'));
sess = req.session;
   if(sess.email) {
        res.render('stats.html');
   }
   else {
       res.redirect('/');
   }

});

app.get('/lessons', function(req, res) {
   //res.sendFile(path.join(__dirname + '/views/generic.html'));
sess = req.session;
   if(sess.email) {
        res.render('lessons.html');
   }
   else {
       res.redirect('/');
   }

});

app.get('/glossary', function(req, res) {
   //res.sendFile(path.join(__dirname + '/views/generic.html'));
sess = req.session;
   if(sess.email) {
        res.render('glossary.html');
   }
   else {
       res.redirect('/');
   }

});


app.get('/generic', function(req, res) {
   //res.sendFile(path.join(__dirname + '/views/generic.html'));
sess = req.session;
   if(sess.email) {
        res.render('generic.html');
   }
   else {
       res.redirect('/');
   }

});

app.get('/elements', function(req, res) {
   //res.sendFile(path.join(__dirname + '/views/elements.html'));
sess = req.session;
   if(sess.email) {
        res.render('elements.html');
   }
   else {
       res.redirect('/');
   }
});


app.get('/logout',function(req,res){
req.session.destroy(function(err) {
  if(err) {
    console.log(err);
  } else {
    res.redirect('/');
  }
})
});

//res.type("json");
app.listen(8080);
