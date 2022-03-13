var db = require.main.require('./models/config');

var getAll = (callback) => {
    var sql = "SELECT * FROM roles";
    db.executeQuery(sql, null, function(result) {
        callback(result);
    });
};

var searchBy = (searchBy, word, callback) => {
    var sql = "SELECT * FROM roles WHERE "+searchBy+" = ?";
    db.executeQuery(sql, [word], function(result) {
        callback(result);
    });
};

var createRole = (role, callback) => {
    var date = new Date();
    var sql = "INSERT INTO roles VALUES(null, ?)";
    db.executeQuery(sql, [role.role_name], function(result) {
        callback(result);
    });
};

var getRole = (id, callback) => {
    var sql = "SELECT * FROM roles WHERE role_id=?";
    db.executeQuery(sql, [id], function(result) {
        callback(result[0]);
    });
};

var updateRole = (role, callback) => {
    console.log('an'+role);
    var sql = "UPDATE roles SET role_name = ? WHERE role_id = ?";
    db.executeQuery(sql, [role.role_name,role.role_id], function(result) {
        console.log('kan'+result);
        callback(result);
    });
};

var deleteRole = (id, callback) => {
    var sql = "DELETE FROM roles WHERE role_id = ?";
    db.executeQuery(sql, [id], function(result) {
        callback(result);
    });
};


// SELECT books.*, issue_date.book_id, COUNT(*) AS magnitude FROM issue_date INNER JOIN books ON issue_date.book_id=books.book_id WHERE (date BETWEEN '2018-07-10' AND '2018-08-10') GROUP BY books.isbn ORDER BY magnitude DESC LIMIT 1


module.exports = {
    getAll,
    getRole,
    searchBy,
    createRole,
    updateRole,
    deleteRole
};
