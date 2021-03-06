const express = require('express');
const router = express.Router();
const Client = require('../models/Client')

const db = require('../configs/database');

router.post('/register/addClient', (req, res) => {
    Client.addClient(req, (err, result) => {
        if (err)
            console.log(err)
        else
            res.send(result)
    })
})

router.get('/client/allClient', (req, res) => {
    Client.getAllClient(req, (err, result) => {
        if (err) console.log(err)
        else res.send(result)
    })
})

router.get('/client/topClientPurchase', (req, res) => {
    Client.getTopClientPurchase(req, (err, result) => {
        if (err) console.log(err)
        else res.send(result)
    })
})

module.exports = router;