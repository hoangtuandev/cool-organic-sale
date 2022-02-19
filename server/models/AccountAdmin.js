const db = require('../configs/database')

const AccountAdmin = {
    getAllAccountAdmin: (req, callback) => {
        return db.query('SELECT * FROM taikhoanquantri TKQT JOIN nhanvien NV ON TKQT.tkqt_manhanvien=NV.nv_id JOIN quyenhantaikhoan QHTK ON TKQT.tkqt_quyenhan = QHTK.qhtk_id JOIN trangthaitaikhoan TTTK ON TKQT.tkqt_trangthai = TTTK.tttk_id ORDER BY NV.nv_hoten ASC', callback)
    },

    getAccountAdminByLogin: (req, callback) => {
        return db.query(`SELECT * FROM taikhoanquantri WHERE tkqt_tendangnhap='${req.body.username}'`, callback)
    },

    disableAccountAdmin: (req, callback) => {
        return db.query(`UPDATE taikhoanquantri SET tkqt_trangthai='LOCK' WHERE tkqt_tendangnhap='${req.body.username}'`, callback)
    },

    enableAccountAdmin: (req, callback) => {
        return db.query(`UPDATE taikhoanquantri SET tkqt_trangthai='OPEN' WHERE tkqt_tendangnhap='${req.body.username}'`, callback)
    },
}

module.exports = AccountAdmin;