
module.exports = {

error: function(err, res) {

    if(err){

        res.render('error', { err : err });
        return true;

    }
    else{

        return false;

    }

  },

session: function(session, res) {

  if (session) {

    return true;

  }
  else {

    res.render('index');
    return false;

  }

}

};
