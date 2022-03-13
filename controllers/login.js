var express = require('express');
var router = express.Router();
var userModel = require.main.require('./models/userModel');
var validationRules = require.main.require('./validation_rules/rules');
var asyncValidator = require('async-validator-2');
var md5 = require('md5');

router.get('/', (req, res)=>{
    res.render('login.ejs', {errs: []});
});

router.post('/', (req, res)=>{
   
    var data = {
        email: req.body.email,
        password: md5(req.body.password)
    };
   
    var rules = validationRules.users.login;
    var validator = new asyncValidator(rules);

    validator.validate(data, (errors, fields)=>{
        if(!errors){
            
            userModel.validateUser(req.body.email, data.password, function(result){
                if(!result){
                  res.render('login', {errs: [{message: 'Invalid email or password'}]});
                }
                else{
                 
                  //if(result.user_role == 'admin'){
                      req.session.admin = result.id;
                      req.session.login = true;
                      res.redirect('/admin/home');
                  
                  
                }
            });
        }
        else {
            console.log(fields);
            res.render('login', {errs: errors});
        }
    });

});

module.exports = router;
