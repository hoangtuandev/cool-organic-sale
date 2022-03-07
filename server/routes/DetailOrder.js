const express = require('express');
const router = express.Router();
const DetailOrder = require('../models/DetailOrder')

const db = require('../configs/database');

router.post('/detailOrder/addDetailOrder', (req, res) => {
    DetailOrder.addDetailOrder(req, (err, result) => {
        if (err) console.log(err)
        else res.send(result)
    })
})

router.post('/detailOrder/getdetailOrder', (req, res) => {
    DetailOrder.getDetailOrder(req, (err, result) => {
        if (err) console.log(err)
        else res.send(result)
    })
})

router.post('/detailOrder/getListProducts', (req, res) => {
    DetailOrder.geListProducts(req, (err, result) => {
        if (err) console.log(err)
        else res.send(result)
    })
})




module.exports = router;