var db = require.main.require('./models/config');
var dateTime = require('node-datetime');
var dt = dateTime.create();
var formatted = dt.format('Y-m-d H:M:S');

var validateUser = (user_email, password, callback) => {
    var sql = "SELECT * FROM administrator WHERE user_email  = ? AND password = ?";
    db.executeQuery(sql, [user_email, password], function(result) {
        console.log(user_email,password);
        console.log(result);
        callback(result[0]);
    });
};

var createUser = (user, callback) => {
    var sql = "INSERT INTO administrator VALUES(null, ?, ?, ?, ?, '"+formatted +"','"+formatted +"')";
    db.executeQuery(sql, [user.name, user.role, user.email,  user.password], function(result) {
        callback(result);
    });
};

var getUser = (id, callback) => {
    var sql = "SELECT * FROM administrator WHERE id=?";
    db.executeQuery(sql, [id], function(result) {
        callback(result[0]);
    });
};

var updateUser = (user, callback) => {
    var sql = "UPDATE administrator SET user_name = ?, user_email = ?, user_role = ? WHERE id = ?";
    db.executeQuery(sql, [user.name, user.email, user.phone, user.address, user.gender, user.user_id], function(result) {
        callback(result);
    });
};

var updatePassword = (password, id, callback) => {
    var sql = "UPDATE administrator SET password = ? WHERE id = ?";
    db.executeQuery(sql, [password, id], function(result) {
        callback(result);
    });
};

var getAll = (callback) => {
    var sql = "SELECT * FROM  administrator";
    db.executeQuery(sql, null, function(result) {
        callback(result);
    });
};


var deleteUser = (id, callback) => {
    var sql = "DELETE FROM  administrator WHERE id = ?";
    db.executeQuery(sql, [id], function(result) {
        callback(result);
    });
};




module.exports = {
    validateUser,
    createUser,
    getUser,
    updateUser,
    updatePassword,
    getAll,
    deleteUser,
  
};
