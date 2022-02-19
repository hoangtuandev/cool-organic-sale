const express = require('express');
const router = express.Router();
const AccountClient = require('../models/AccountClient')

const db = require('../configs/database');
const { loginAccountClient } = require('../models/AccountClient');

router.post('/register/addAccountClient', (req, res) => {
    AccountClient.addAccountClient(req, (err, result) => {
        if (err)
            console.log(err)
        else
            res.send(result)
    })
})

router.post('/login/user', (req, res) => {
    AccountClient.loginAccountClient(req, (err, result) => {
        if (err)
            console.log(err)
        else
            res.send(result)
    })
})

module.exports = router;