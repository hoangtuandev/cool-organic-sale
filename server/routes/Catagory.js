const express = require('express');
const router = express.Router();
const Catagory = require('../models/Catagory')

const db = require('../configs/database');
const { deleteCatagory } = require('../models/Catagory');

router.get("/catagorys", (req, res) => {
    Catagory.getAllCatagory((err, result) => {
        if (err)
            console.log(err)
        else
            res.send(result)
    })
})

router.post("/catagorys/addCatagory", (req, res) => {
    Catagory.addCatagory(req, (err, result) => {
        if (err)
            console.log(err)
        else
            res.send(result)
    })
})


router.post("/catagorys/deleteCatagory", (req, res) => {
    Catagory.deleteCatagory(req, (err, result) => {
        if (err)
            console.log(err)
        else
            res.send(result)
    })
})

router.post('/catagorys/update', (req, res) => {
    Catagory.updateCatagory(req, (err, result) => {
        if (err) { console.log(err) }
        else { res.send(result) }
    })
})

module.exports = router;