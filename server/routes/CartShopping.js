const express = require('express');
const router = express.Router();
const CartShopping = require('../models/CartShopping')

const db = require('../configs/database');
const { addProductCartShopping } = require('../models/CartShopping');

router.post('/cartShopping', (req, res) => {
    CartShopping.getCartShopping(req, (err, result) => {
        if (err) { console.log(err) }
        else { res.send(result) }
    })
})

router.post('/deleteProductCart', (req, res) => {
    CartShopping.deleteProductCart(req, (err, result) => {
        if (err) { console.log(err) }
        else { res.send(result) }
    })
})

router.post('/updateAmountProductCart', (req, res) => {
    CartShopping.updateAmountProductCart(req, (err, result) => {
        if (err) { console.log(err) }
        else { res.send(result) }
    })
})

router.post('/addProductCartShopping', (req, res) => {
    CartShopping.addProductCartShopping(req, (err, result) => {
        if (err) { console.log(err) }
        else { res.send(result) }
    })
})

router.post('/getTotalPrice', (req, res) => {
    db.query(`SELECT SUM(gh_soluong * gh_dongia) AS totalPrice FROM giohang WHERE gh_sodienthoai='${req.body.phone}'`, (err, result) => {
        if (err) console.log(err)
        else res.send(result)
    })
})


module.exports = router;