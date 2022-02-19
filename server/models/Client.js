const db = require('../configs/database')

const Client = {
    addClient: (req, callback) => {
        return db.query('INSERT INTO khachhang(kh_ma, kh_hoten, kh_gioitinh, kh_sodienthoai, kh_diachi, kh_taikhoan) VALUES (?, ?, ?, ?, ?, ?)', [req.body.id, req.body.fullname, req.body.gender, req.body.phone, req.body.address, req.body.account], callback)
    }
}

module.exports = Client;