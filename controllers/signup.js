var express = require('express');
var router = express.Router();
var userModel = require.main.require('./models/userModel');
var validationRules = require.main.require('./validation_rules/rules');
var asyncValidator = require('async-validator-2');
var md5 = require('md5');

router.get('/', (req, res)=>{
    console.log('ffknknkn');
    res.render('signup.ejs', {errs: []});
});

router.post('/', (req, res)=>{
    console.log(req.body);
    var data = {
      name: req.body.name,
      email: req.body.email,
      role: req.body.role,
      password: md5(req.body.password),
      repassword: req.body.repassword
    };
    console.log(data);
    var rules = validationRules.users.create;
    var validator = new asyncValidator(rules);

    validator.validate(data, (errors, fields)=>{
        if(!errors){
            userModel.createUser(data, function(result){
                if(result){
                    //console.log(result);
                    res.redirect('/login');
                }
                else {
                    res.send('Invalid');
                }
            });
        }
        else {
            console.log(fields);
            res.render('signup', {errs: errors});
        }
    });

});

module.exports = router;
