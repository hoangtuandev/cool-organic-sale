const express = require('express');
const router = express.Router();
const Order = require('../models/Order')

const db = require('../configs/database');

router.post('/orders/addOrder', (req, res) => {
    Order.addOrder(req, (err, result) => {
        if (err) console.log(err)
        else res.send(result)
    })
})

router.get('/orders/allOrder', (req, res) => {
    Order.getAllOrders(req, (err, result) => {
        if (err) console.log(err)
        else res.send(result)
    })
})

router.post('/orders/cancelOrder', (req, res) => {
    Order.cancelOrder(req, (err, result) => {
        if (err) console.log(err)
        else res.send(result)
    })
})

router.post('/orders/updateStateorder', (req, res) => {
    Order.updateStateOrder(req, (err, result) => {
        if (err) console.log(err)
        else res.send(result)
    })
})

router.post('/orders/acceptOrder', (req, res) => {
    Order.acceptOrder(req, (err, result) => {
        if (err) console.log(err)
        else res.send(result)
    })
})

router.post('/orders/deleteOrder', (req, res) => {
    Order.deleteOrder(req, (err, result) => {
        if (err) console.log(err)
        else res.send(result)
    })
})

router.get('/orders/totalSales', (req, res) => {
    Order.getTotalSales(req, (err, result) => {
        if (err) console.log(err)
        else res.send(result)
    })
})

router.get('/orders/amountOrdersCancel', (req, res) => {
    Order.getAmountOrdersCancel(req, (err, result) => {
        if (err) console.log(err)
        else res.send(result)
    })
})

router.get('/orders/amountOrdersSuccess', (req, res) => {
    Order.getAmountOrdersSuccess(req, (err, result) => {
        if (err) console.log(err)
        else res.send(result)
    })
})

router.get('/orders/amountOrdersProcessing', (req, res) => {
    Order.getAmountOrdersProcessing(req, (err, result) => {
        if (err) console.log(err)
        else res.send(result)
    })
})

router.get('/orders/allYearFromOrders', (req, res) => {
    Order.getYearsFormOrders(req, (err, result) => {
        if (err) console.log(err)
        else res.send(result)
    })
})

router.post('/orders/salesOrdersForMonths', (req, res) => {
    Order.getSalesOrdersForMonths(req, (err, result) => {
        if (err) console.log(err)
        else res.send(result)
    })
})

router.post('/orders/OrdersByAccount', (req, res) => {
    Order.getOrdersByAccount(req, (err, result) => {
        if (err) console.log(err)
        else res.send(result)
    })
})

router.post('/orders/salesMonthly', (req, res) => {
    Order.getSalesMonthly(req, (err, result) => {
        if (err) console.log(err)
        else res.send(result)
    })
})

module.exports = router;