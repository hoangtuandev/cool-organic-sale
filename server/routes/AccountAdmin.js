const express = require('express');
const router = express.Router();
const AccountClient = require('../models/AccountAdmin')
const db = require('../configs/database');
const AccountAdmin = require('../models/AccountAdmin');

router.get('/allAccountAdmin', (req, res) => {
    AccountAdmin.getAllAccountAdmin(req, (err, result) => {
        if (err)
            console.log(err)
        else
            res.send(result)
    })
})

router.post('/getAccountAdminByLogin', (req, res) => {
    AccountAdmin.getAccountAdminByLogin(req, (err, result) => {
        if (err)
            console.log(err)
        else
            res.send(result)
    })
})

router.post('/disableAccountAdmin', (req, res) => {
    AccountAdmin.disableAccountAdmin(req, (err, result) => {
        if (err)
            console.log(err)
        else
            res.send(result)
    })
})

router.post('/enableAccountAdmin', (req, res) => {
    AccountAdmin.enableAccountAdmin(req, (err, result) => {
        if (err)
            console.log(err)
        else
            res.send(result)
    })
})

module.exports = router;