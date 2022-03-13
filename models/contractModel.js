var db = require.main.require('./models/config');



var createContractUser = (contract, callback) => {

    var sql = "INSERT INTO map_contracts VALUES(null, ?, ?, ?, ?, ?, ?, ?)";
    db.executeQuery(sql, [contract.role,  contract.map, contract.price, contract.cluster,contract.skill,null,contract.created_at], function(result) {
        callback(result);
    });
};




var getAll = (callback) => {
    var sql = "SELECT * FROM  map_contracts";
    db.executeQuery(sql, null, function(result) {
        callback(result);
    });
};






module.exports = {
    createContractUser,
    getAll
  
};
