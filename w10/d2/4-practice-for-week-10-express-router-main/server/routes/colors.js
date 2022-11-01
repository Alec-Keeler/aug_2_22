const express = require('express');
const router = express.Router();
const shadesRouter = require('./shades');

router.use((req, res, next) => {
    if (req.body.auth === "yes") {
        next()
    } else {
        res.json({
            error: "You are not authorized"
        })
    }
})

router.get('/', (req, res) => {
    res.send("GET /colors")
})

router.use(shadesRouter)

// /colors/all
router.get('/:name', (req, res) => {
    res.send(`GET /colors/${req.params.name}`)
})

module.exports = router;