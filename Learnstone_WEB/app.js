
var express = require('express');
var session = require('express-session');
var bodyParser = require('body-parser');
var mysql = require('mysql');
var path = require('path');

var index = require('./routes/index');
var cards = require('./routes/cards');
var lessons = require('./routes/lessons');
var questions = require('./routes/questions');
var stats = require('./routes/stats');
var glossary = require('./routes/glossary');
var fclient = require('./routes/fclient');
var logout = require('./routes/logout');

var app = express();


app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.engine('html', require('ejs').renderFile);

app.use('/_assets', express.static('_assets'));
app.use(session({secret: 'trysession'}));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

app.use('/', index);
app.use('/cards', cards);
app.use('/lessons', lessons);
app.use('/questions', questions);
app.use('/stats', stats);
app.use('/glossary', glossary);
app.use('/fclient', fclient);
app.use('/logout', logout);

app.use(function(req, res, next) {

    res.status(500);
    res.render('error');

});

app.listen(8080);
module.exports = app;
