const db = require('../configs/database')

const Catagory = {
    getAllCatagory: (callback) => {
        return db.query("SELECT * FROM loaisanpham", callback);
    },
    addCatagory: (req, callback) => {
        return db.query("INSERT INTO loaisanpham(lsp_id, lsp_tenloai) VALUES (?, ?)", [req.body.id, req.body.name], callback)
    },
    deleteCatagory: (req, callback) => {
        return db.query(`DELETE FROM loaisanpham WHERE lsp_id='${req.body.id}'`, callback)
    },
    updateCatagory: (req, callback) => {
        return db.query(`UPDATE loaisanpham SET lsp_tenloai='${req.body.name}' WHERE lsp_id='${req.body.id}'`, callback)
    }
}

module.exports = Catagory;