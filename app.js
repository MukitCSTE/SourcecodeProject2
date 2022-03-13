//declaration
var express = require('express');
var expressSession = require('express-session');
var bodyParser = require('body-parser');
var contractModel = require.main.require('./models/contractModel');
const app = express();
var port = 8080;
const xlsx = require("xlsx");
var dateTime = require('node-datetime');
var dt = dateTime.create();
var formatted = dt.format('Y-m-d H:M:S');
const fileUpload = require('express-fileupload');


// default options
app.use(fileUpload());

//common controllers
var signup = require('./controllers/signup');
var login = require('./controllers/login');
var logout = require('./controllers/logout');
var admin = require('./controllers/admin');

//admin controllers
//var admin = require('./controllers/admin');


//customer controllers
//var customer = require('./controllers/customer');

//configure
app.set('view engine', 'ejs');

//middlewares
app.use(bodyParser.urlencoded({extended: false}));
app.use(expressSession({secret: 'my top secret pass', resave: false, saveUninitialized: true}));
app.use('/css', express.static(__dirname + '/css'));
app.use('/images', express.static(__dirname + '/images'));
app.use('/js', express.static(__dirname + '/js'));
app.use('/admin/assets', express.static(__dirname + '/assets'));
app.use('/admin/pages', express.static(__dirname + '/views/admin/pages'));


app.get('/upload', function(req, res) {
	res.sendFile(__dirname + '/views/upload.html');
  });

  app.post('/upload', function(req, res) {
	let sampleFile;
	let uploadPath;
  
	if (!req.files || Object.keys(req.files).length === 0) {
	  res.status(400).send('No files were uploaded.');
	  return;
	}
  
	//console.log('req.files >>>', req.files); // eslint-disable-line
  
	sampleFile = req.files.sampleFile;
  
	uploadPath = __dirname + '/uploads/' + sampleFile.name;
  
	sampleFile.mv(uploadPath, function(err) {
	  if (err) {
		return res.status(500).send(err);
	  }



const workbook = xlsx.readFile(uploadPath);
const sheetNames = workbook.SheetNames;

// Get the data of "Sheet1"
const data = xlsx.utils.sheet_to_json(workbook.Sheets[sheetNames[0]])

/// Do what you need with the received data
data.map(contract => { 
 

  var data = {
	role: contract.Role,
	skill: contract.SkillLevel,
	cluster: contract.Cluster,
	map: contract.MapUser,
	price: contract.Price,
	status: 1,
	created_at: formatted

   
};



		contractModel.createContractUser(data, (result)=> {
			if(!result){
				//res.send("Invalid");
			}
			else {
			
				//res.redirect('/admin/contract');
			
				
			}
			});


})
  
	  res.send('File uploaded to ' + uploadPath);
	});
  });













app.use('*', function(req, res, next){

	if(req.originalUrl == '/login' || req.originalUrl == '/signup')
	{  console.log('here1'); 
		next();
	}
	else
	{
		if(!req.session.admin && !req.session.customer)
		{
			res.redirect('/login');
			return;
		}
		next();
	}
});


//routes
app.use('/login', login);
app.use('/signup', signup);
app.use('/logout', logout);

//admin routes
app.use('/admin', admin);








//server start
app.listen(port, ()=>{
    console.log(`Server running on port ${port}`);
});

app.timeout = 20;