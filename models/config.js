var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'abc-database.cd6bhxjeqpoi.us-east-2.rds.amazonaws.com',
  user     : 'admin',
  password : '12345678mM',
  database : 'abcdb'
});

module.exports = {
	executeQuery: function(sql, sqlParam, callback){
		if(sqlParam == null)
		{
			connection.query(sql, function(error, result){
				if(error)
				{
					console.log(error);
				}
				callback(result);
			});
		}
		else
		{
			connection.query(sql, sqlParam, function(error, result){
				if(error)
				{
					console.log(error);
				}
				callback(result);
			});
		}
	}
};
