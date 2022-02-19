const express = require('express')
const app = express()
const cors = require('cors')
const routesCatagory = require('./routes/Catagory')
const routesProduct = require('./routes/Product')
const routesAccountClient = require('./routes/AccountClient')
const routesClient = require('./routes/Client')
const routesCartShopping = require('./routes/CartShopping')
const routesAccountAdmin = require('./routes/AccountAdmin')

const db = require('./configs/database')

app.use(cors())
app.use(express.json())
app.use(routesCatagory, routesProduct, routesAccountClient, routesClient, routesCartShopping, routesAccountAdmin)

// app.get('/products', (req, res) => {
//     db.query("SELECT * FROM sanpham", (err, result) => {
//         if (err) { console.log(err) }
//         else { res.send(result) }
//     })
// })

// app.get('/discountProducts', (req, res) => {
//     db.query('SELECT * FROM sanpham SP JOIN sanphamkhuyenmai SPKM ON SP.sp_id = SPKM.spkm_masanpham', (err, result) => {
//         if (err) { console.log(err) }
//         else { res.send(result) }
//     })
// })

// app.get('/allAccountAdmin', (req, res) => {
//     db.query('SELECT * FROM taikhoanquantri TKQT JOIN nhanvien NV ON TKQT.tkqt_manhanvien=NV.nv_id', (err, result) => {
//         if (err) console.log(err)
//         else res.send(result)
//     })
// })

// app.post('/login/user', (req, res) => {
//     db.query(`SELECT * FROM taikhoankhachhang WHERE tkkh_sodienthoai='${req.body.phone}'`, (err, result) => {
//         if (err) { console.log(err) }
//         else { res.send(result) }
//     })
// })

// app.post('/products/getLimitFour', (req, res) => {
//     db.query(`SELECT * FROM sanpham WHERE sp_maloai='${req.body.catagory}' LIMIT 4`, (err, result) => {
//         if (err) { console.log(err) }
//         else { res.send(result) }
//     })
// })

app.post('/discounts/getDiscountsByPrice', (req, res) => {
    db.query(`SELECT * FROM khuyenmai WHERE kmai_dieukien<='${req.body.price}'`, (err, result) => {
        if (err) { console.log(err) }
        else { res.send(result) }
    })
})

// app.post('/products/ProductById', (req, res) => {
//     db.query(`SELECT * FROM sanpham WHERE sp_id='${req.body.id}'`, (err, result) => {
//         if (err) { console.log(err) }
//         else { res.send(result) }
//     })
// })

// app.post('/getAccountAdminByLogin', (req, res) => {
//     db.query(`SELECT * FROM taikhoanquantri WHERE tkqt_tendangnhap='${req.body.username}'`, (err, result) => {
//         if (err) { console.log(err) }
//         else { res.send(result) }
//     })
// })

// app.post('/products/addProduct', (req, res) => {
//     db.query("INSERT INTO sanpham(sp_id, sp_tensanpham, sp_gia, sp_hinhanh, sp_donvitinh, sp_tonkho, sp_maloai) VALUES (?, ?, ?, ?, ?, ?, ?)",
//         [req.body.idProduct, req.body.nameProduct, req.body.priceProduct, req.body.avatarName, req.body.unitProduct, req.body.stockProduct, req.body.catagoryProduct], (err, result) => {
//             if (err) { console.log(err) }
//             else { res.send(result) }
//         })
// })

// app.post('/addProductCartShopping', (req, res) => {
//     db.query('INSERT INTO giohang(gh_id, gh_sodienthoai, gh_masanpham, gh_donvitinh, gh_dongia, gh_soluong) VALUES (?, ?, ?, ?, ?, ?)', [req.body.id, req.body.phone, req.body.product, req.body.unit, req.body.price, req.body.amount], (err, result) => {
//         if (err) { console.log(err) }
//         else { res.send(result) }
//     })
// })

// app.post('/register/addClient', (req, res) => {
//     db.query('INSERT INTO khachhang(kh_ma, kh_hoten, kh_gioitinh, kh_sodienthoai, kh_diachi, kh_taikhoan) VALUES (?, ?, ?, ?, ?, ?)', [req.body.id, req.body.fullname, req.body.gender, req.body.phone, req.body.address, req.body.account], (err, result) => {
//         if (err) { console.log(err) }
//         else { res.send(result) }
//     })
// })

// app.post('/deleteProductCart', (req, res) => {
//     db.query(`DELETE FROM giohang WHERE gh_id='${req.body.id}'`, (err, result) => {
//         if (err) console.log(err)
//         else res.send(result)
//     })
// })

// app.post('/getTotalPrice', (req, res) => {
//     db.query(`SELECT SUM(gh_soluong * gh_dongia) AS totalPrice FROM giohang WHERE gh_sodienthoai='${req.body.phone}'`, (err, result) => {
//         if (err) console.log(err)
//         else res.send(result)
//     })
// })

// app.post('/product/updateProduct', (req, res) => {
//     db.query(`UPDATE sanpham SET sp_tensanpham='${req.body.name}', sp_gia='${req.body.price}', sp_hinhanh='${req.body.avatar}', sp_donvitinh='${req.body.unit}', sp_tonkho='${req.body.stock}', sp_maloai='${req.body.catagory}' WHERE sp_id='${req.body.id}'`, (err, result) => {
//         if (err) { console.log(err) }
//         else { res.send(result) }
//     })
// })

// app.post('/updateAmountProductCart', (req, res) => {
//     db.query(`UPDATE giohang SET gh_soluong='${req.body.amount}' WHERE gh_id='${req.body.id}'`, (err, result) => {
//         if (err) console.log(err)
//         else res.send(result)
//     })
// })

app.listen(3333, () => {
    console.log("Server is running on port 3333");
})