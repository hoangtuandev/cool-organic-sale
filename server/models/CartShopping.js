const db = require('../configs/database')

const CartShopping = {
    getCartShopping: (req, callback) => {
        return db.query(`SELECT * FROM giohang GH JOIN sanpham SP ON GH.gh_masanpham = SP.sp_id  WHERE gh_sodienthoai='${req.body.phone}'`, callback)
    },

    deleteProductCart: (req, callback) => {
        return db.query(`DELETE FROM giohang WHERE gh_id='${req.body.id}'`, callback)
    },

    updateAmountProductCart: (req, callback) => {
        return db.query(`UPDATE giohang SET gh_soluong='${req.body.amount}' WHERE gh_id='${req.body.id}'`, callback)
    },

    addProductCartShopping: (req, callback) => {
        return db.query('INSERT INTO giohang(gh_id, gh_sodienthoai, gh_masanpham, gh_donvitinh, gh_dongia, gh_soluong) VALUES (?, ?, ?, ?, ?, ?)', [req.body.id, req.body.phone, req.body.product, req.body.unit, req.body.price, req.body.amount], callback)
    }
}

module.exports = CartShopping;