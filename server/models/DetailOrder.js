const db = require('../configs/database')

const DetailOrder = {
    addDetailOrder: (req, callback) => {
        return db.query('INSERT INTO chitietdonhang(ctdh_id, ctdh_madonhang, ctdh_masanpham, ctdh_soluong, ctdh_donvitinh, ctdh_hinhanh, ctdh_tongtien) VALUES(?, ?, ?, ?, ?, ?, ?)',
            [req.body.id, req.body.order, req.body.product, req.body.amount, req.body.unit, req.body.image, req.body.price], callback)
    },

    getDetailOrder: (req, callback) => {
        return db.query(`SELECT *, date_format(dh_ngaydathang, '%d/%m/%Y %H:%i') as dh_ngaydathang FROM donhang DH JOIN taikhoankhachhang TKKH ON DH.dh_taikhoan = TKKH.tkkh_sodienthoai JOIN trangthaidonhang TTDH ON TTDH.ttdh_id = dh_trangthai WHERE dh_id='${req.body.id}'`, callback)
    },

    geListProducts: (req, callback) => {
        return db.query(`SELECT * FROM SANPHAM SP JOIN chitietdonhang CTDH ON SP.sp_id = CTDH.ctdh_masanpham JOIN donhang DH ON DH.dh_id = CTDH.ctdh_madonhang WHERE DH.dh_id='${req.body.id}' `, callback)
    },


}

module.exports = DetailOrder;