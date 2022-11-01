const express = require('express');
const router = express.Router()

router.use((req, res, next) => {
    console.log("SHADES!")
    next()
})

module.exports = router;