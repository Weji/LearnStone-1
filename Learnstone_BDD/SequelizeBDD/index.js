'use strict'

var unirest = require('unirest');

unirest.get("https://omgvamp-hearthstone-v1.p.mashape.com/cards?collectible=1&locale=frFR")
.header("X-Mashape-Key", "fmC1YCENtdmshGSNDqw0J9OvwuwWp1C7omxjsnrpJBXUqJycAE")
.end(function (result) {
  console.log("------------------");
  console.log("------------------");
  console.log("------------------");
  console.log("------------------");
  console.log("------------------");
  console.log("------------------");
  console.log("------------------");
  console.log("------------------");
  console.log("------------------");
  console.log("------------------");
  console.log("------------------");
  console.log("------------------");
  console.log(result.body);
  console.log("------------------");
  console.log("------------------");
  console.log("------------------");
  console.log("------------------");
  console.log("------------------");
  console.log("------------------");
  console.log("------------------");
  console.log("------------------");
  console.log("------------------");
  console.log("------------------");
  console.log("------------------");
  console.log("------------------");

});
