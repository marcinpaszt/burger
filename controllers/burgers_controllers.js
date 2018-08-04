var express = require('express');
var router = express.Router();
var burger = ('../models/burger.js');

router.get("/", function(req, res) {
    burger.all(function(data) {
      var hbsObject = {
         burgers: data
      };
      console.log(hbsObject);
      res.render("index", hbsObject);
    });
});
  
router.post('/burgers/create', function (req, res) {
    burger.create(["burger_name"],[
        req.body.burger_name
    ], function(data) {
        res.redirect("/")
    });
});

router.put("/burgers/update", function (req, res) {
    var condition = "id = " + req.params.id;
    console.log("condition", condition);
    burger.update({
        devoured: true
    }, condition, function(data) {
        res.redirect("/")   
    });
});

module.exports = router;


