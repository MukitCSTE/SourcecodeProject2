var db = require.main.require('./models/config');



var createMapUser = (map_user, callback) => {
    var sql = "INSERT INTO map_user VALUES(null, ?, ?, ?, ?, ?)";
    db.executeQuery(sql, [map_user.user_name,  map_user.user_email, map_user.status, map_user.created_at,map_user.password], function(result) {
        callback(result);
    });
};

var getMapUser = (id, callback) => {
    var sql = "SELECT * FROM map_user WHERE map_id=?";
    db.executeQuery(sql, [id], function(result) {
        callback(result[0]);
    });
};

var updateMapUser = (user, callback) => {
    var sql = "UPDATE map_user SET map_user_name = ?, map_user_email = ?, active_status = ?, created_at = ? WHERE map_id = ?";
    db.executeQuery(sql, [user.user_name, user.user_email, user.status, user.created_at, user.map_id], function(result) {
        callback(result);
    });
};

var updatePassword = (password, id, callback) => {
    var sql = "UPDATE  map_user SET password = ? WHERE map_id = ?";
    db.executeQuery(sql, [password, id], function(result) {
        callback(result);
    });
};

var getAll = (callback) => {
    var sql = "SELECT * FROM  map_user";
    db.executeQuery(sql, null, function(result) {
        callback(result);
    });
};


var deleteUser = (id, callback) => {
    var sql = "DELETE FROM  map_user WHERE map_id = ?";
    db.executeQuery(sql, [id], function(result) {
        callback(result);
    });
};




module.exports = {
    createMapUser,
    getMapUser,
    updateMapUser,
    updatePassword,
    getAll,
    deleteUser,
  
};
