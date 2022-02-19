const db = require('../configs/database')

const AccountClient = {
    addAccountClient: (req, callback) => {
        return db.query('INSERT INTO taikhoankhachhang(tkkh_sodienthoai, tkkh_matkhau, tkkh_hoten) VALUES (?, ?, ?)', [req.body.phone, req.body.password, req.body.fullname], callback)
    },

    loginAccountClient: (req, callback) => {
        return db.query(`SELECT * FROM taikhoankhachhang WHERE tkkh_sodienthoai='${req.body.phone}'`, callback)
    },
}

module.exports = AccountClient;