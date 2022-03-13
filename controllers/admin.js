
const nodemailer = require('nodemailer');
var express = require('express');
var router = express.Router();
var roleModel = require.main.require('./models/roleModel');
var mapUserModel = require.main.require('./models/mapUserModel');
var contractModel = require.main.require('./models/contractModel');
var validationRules = require.main.require('./validation_rules/rules');
var asyncValidator = require('async-validator-2');
var dateTime = require('node-datetime');
var dt = dateTime.create();
var formatted = dt.format('Y-m-d H:M:S');
var md5 = require('md5');
const fileUpload = require('express-fileupload');
const app = express();
// default options
app.use(fileUpload());


const transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
      user: 'abccompany866@gmail.com',
      pass: '123321@mukit',
    },
  });


app.post('/upload', function(req, res) {
    let sampleFile;
    let uploadPath;
  
    if (!req.files || Object.keys(req.files).length === 0) {
      return res.status(400).send('No files were uploaded.');
    }
  
    // The name of the input field (i.e. "sampleFile") is used to retrieve the uploaded file
    sampleFile = req.files.sampleFile;
    uploadPath = __dirname  + sampleFile.name;
  
    // Use the mv() method to place the file somewhere on your server
    sampleFile.mv(uploadPath, function(err) {
      if (err)
        return res.status(500).send(err);
  
      res.send('File uploaded!');
    });
  });



router.get('/home', (req, res)=> {
        
        if(req.session.login == true){




            contractModel.getAll((result)=> {
                if(!result){
                    res.send("Invalid");
                }
                else {
                  
                    res.render('admin/home.ejs', {res: result,errs: []});
                 
                }
            });


        }
        else{
                res.redirect('/login');  
        }

});
router.get('/role', (req, res)=> {


        if(req.session.login == true){


                roleModel.getAll((result)=> {
                        if(!result){
                            res.send("Invalid");
                        }
                        else {
                          
                            res.render('admin/role.ejs', {res: result,errs: []});
                         
                        }
                    });
               
        }      
        else{
                res.redirect('/login');        
         }
   
      
});



router.get('/role/delete/:id', (req, res)=> {
        var id = req.params.id;
       
        var role = roleModel.deleteRole(id, (result)=> {
                if(result.length == 0){
                    res.send("Invalid");
                }
                else {
                 
                    res.redirect('/admin/role');
                }
            });
    });


 router.get('/role/edit/:id', (req, res)=> {
        var id = req.params.id;
        roleModel.getRole(id, (result)=> {
            if(result.length == 0){
                res.send("Invalid");
            }
            else {
        
                res.render('admin/role-edit.ejs', {res: result});

            }
        });
    });


    
    router.post('/role/edit/:id', (req, res)=> {
        var data = {
                role_id:  req.params.id,
                role_name: req.body.role
                //skill_level: req.body.skill
               
            };
      
            var rules = validationRules.role.create;
            var validator = new asyncValidator(rules);
        
            validator.validate(data, (errors, fields)=> {
                if(!errors){
                    roleModel.updateRole(data, (result)=> {
                        if(!result){
                            res.send("Invalid");
                        }
                        else {
                           
                            res.redirect('/admin/role');
                         
                            
                        }
                    });
                }
                else {
                   
                    res.redirect('/admin/role');
                }
            });;
    });

router.post('/role', (req, res)=> {
       
        var data = {
            role_name: req.body.role
           
            //skill_level: req.body.skill
           
        };
    
        var rules = validationRules.role.create;
        var validator = new asyncValidator(rules);
    
        validator.validate(data, (errors, fields)=> {
            if(!errors){
                roleModel.createRole(data, (result)=> {
                    if(!result){
                        res.send("Invalid");
                    }
                    else {
                       
                        res.redirect('/admin/role');
                     
                        
                    }
                });
            }
            else {
               
                res.redirect('/admin/role');
            }
        });
    });


router.get('/map', (req, res)=> {

        
        if(req.session.login == true){

                //res.render('admin/map.ejs', {errs: []});
                res.redirect('/login');      
        }      
        else{
                res.redirect('/login');        
         }
   
       

});


router.get('/map-user', (req, res)=> {

    
   


          
        if(req.session.login == true){
                
                mapUserModel.getAll((result)=> {
                if(!result){
                    res.send("Invalid");
                }
                else {
                    
                    res.render('admin/map-user.ejs', {res: result,errs: []});
                 
                }
                });

                  //res.render('admin/map-user.ejs', {errs: []});
        }      
        else{
                res.redirect('/login');        
         }
   
      

});

router.post('/map-user', (req, res)=> {











       
          
        var data = {
                user_name: req.body.user_name,
                user_email: req.body.user_email,
                status: req.body.status,
                password: md5(req.body.password),
                created_at: formatted

               
            };
        
            var rules = validationRules.mapusers.create;
            var validator = new asyncValidator(rules);
        
            validator.validate(data, (errors, fields)=> {
                if(!errors){
                    mapUserModel.createMapUser(data, (result)=> {
                        if(!result){
                            res.send("Invalid");
                        }
                        else {

                            transporter.sendMail({
                                from: 'abccompany866@gmail.com', // sender address
                                to: req.body.user_email, // list of receivers
                                headers: {
                                  
                                    "x-priority": "1",
                                    "x-msmail-priority": "High",
                                    "Priority": "Urgent",
                                    "Importance": "high"
                                },
                                subject: "ABC Company | MapUser Credetials", // Subject line
                                text: "Hi thank you for agreement with us. your user name: " + req.body.user_name + " & password: "+ req.body.password, // plain text body
                                //html: "<b>There is a new article. It's about sending emails, check it out!</b>", // html body
                              }).then(info => {
                               
                                
                              }).catch(console.error);
                        
                           
                              res.redirect('/admin/map-user');
                         
                            
                        }
                    });
                }
                else {
                   
                    res.redirect('/admin/map-user');
                }
            });
   
      

});



router.get('/map-user/delete/:id', (req, res)=> {
        var id = req.params.id;
       
        var role = mapUserModel.deleteUser(id, (result)=> {
                if(result.length == 0){
                    res.send("Invalid");
                }
                else {
                    
                    res.redirect('/admin/map-user');
                }
            });
    });


    router.get('/map-user/edit/:id', (req, res)=> {
        var id = req.params.id;
        mapUserModel.getMapUser(id, (result)=> {
            if(result.length == 0){
                res.send("Invalid");
            }
            else {
        
                res.render('admin/map-edit.ejs', {res: result,errs: []});

            }
        });
    });


    router.post('/map-user/edit/:id', (req, res)=> {
      
          

        var data = {
            map_id:  req.params.id,
            user_name: req.body.user_name,
            user_email: req.body.user_email,
            status: req.body.status,
            password: (req.body.password[1])? md5(req.body.password[1]) : null,
            created_at: formatted

            //skill_level: req.body.skill
           
        };
       
        var rules = validationRules.mapusers.update;
        var validator = new asyncValidator(rules);
    
        validator.validate(data, (errors, fields)=> {
            if(!errors){


                if(data.password){
                    mapUserModel.updatePassword(data.password,req.params.id, (result)=> {
                      
                        if(!result){
                            
                            res.send("Invalid");
                        }
                    
                    });
                }
               
                mapUserModel.updateMapUser(data, (result)=> {
                    if(!result){
                        res.send("Invalid");
                    }
                    else {
                       
                        res.redirect('/admin/map-user');
                     
                        
                    }
                });

              
                   
                
                 
            }
            else {
               
                res.redirect('/admin/map-user');
            }
        });
        
    });


router.get('/contract', (req, res)=> {
         
        if(req.session.login == true){

            mapUserModel.getAll((map)=> {
                if(!map){
                    res.send("Invalid");
                }
             

                roleModel.getAll((result)=> {
                    if(!result){
                        res.send("Invalid");
                    }
                    else {
                       
                        res.render('admin/contract.ejs', {res: result,req: map,errs: []});
                     
                    }
                  
                });
                
            });

           

                  //res.render('admin/contract.ejs', {errs: []});
        }      
        else{
                res.redirect('/login');        
         }
   
      

});




router.get('/contract', (req, res)=> {
         
    if(req.session.login == true){

        mapUserModel.getAll((map)=> {
            if(!map){
                res.send("Invalid");
            }
         

            roleModel.getAll((result)=> {
                if(!result){
                    res.send("Invalid");
                }
                else {
                   
                    res.render('admin/contract.ejs', {res: result,req: map,errs: []});
                 
                }
              
            });
            
        });

       

              //res.render('admin/contract.ejs', {errs: []});
    }      
    else{
            res.redirect('/login');        
     }

  

});



router.get('/contract', (req, res)=> {
         
    if(req.session.login == true){

        mapUserModel.getAll((map)=> {
            if(!map){
                res.send("Invalid");
            }
         

            roleModel.getAll((result)=> {
                if(!result){
                    res.send("Invalid");
                }
                else {
                   
                    res.render('admin/contract.ejs', {res: result,req: map,errs: []});
                 
                }
              
            });
            
        });

       

              //res.render('admin/contract.ejs', {errs: []});
    }      
    else{
            res.redirect('/login');        
     }

  

});



router.get('/upload', (req, res)=> {
         
    if(req.session.login == true){

        res.render('admin/upload.ejs', {res: result,req: map,errs: []});
        

            
    }      
    else{
            res.redirect('/login');        
     }

  

});
















router.post('/contract', (req, res)=> {
         
    var data = {
        role: req.body.role,
        skill: req.body.skill,
        cluster: req.body.cluster,
        map: req.body.map,
        price: req.body.price,
        status: 1,
        created_at: formatted

       
    };


    
  
    var rules = validationRules.contract.create;
    var validator = new asyncValidator(rules);

    validator.validate(data, (errors, fields)=> {
        if(!errors){
            contractModel.createContractUser(data, (result)=> {
                if(!result){
                    res.send("Invalid");
                }
                else {
                   
                    res.redirect('/admin/contract');
                 
                    
                }
            });
        }
        else {
           
            res.redirect('/admin/contract');
                 
        }
    });



  

});





module.exports = router;