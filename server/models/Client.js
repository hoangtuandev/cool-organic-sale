const db = require('../configs/database')

const Client = {
    addClient: (req, callback) => {
        return db.query('INSERT INTO khachhang(kh_ma, kh_hoten, kh_gioitinh, kh_sodienthoai, kh_diachi, kh_taikhoan) VALUES (?, ?, ?, ?, ?, ?)', [req.body.id, req.body.fullname, req.body.gender, req.body.phone, req.body.address, req.body.account], callback)
    },

    getAllClient: (req, callback) => {
        return db.query('SELECT * FROM taikhoankhachhang', callback)
    },

    getTopClientPurchase: (res, callback) => {
        return db.query(`SELECT *, SUM(dh_thanhtoan) AS total, COUNT(dh_id) sodonhang FROM taikhoankhachhang TKKH JOIN donhang DH ON DH.dh_taikhoan=TKKH.tkkh_sodienthoai WHERE dh_trangthai='THANHCONG' GROUP BY TKKH.tkkh_sodienthoai ORDER BY total DESC`, callback)
    },



}

module.exports = Client;