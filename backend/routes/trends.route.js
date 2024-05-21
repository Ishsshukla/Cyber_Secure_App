const router = require('express').Router();
const cyberTrends = require('../controllers/cyberTrends.controller');


router.get('/cyberTrends', cyberTrends) ; 

module.exports = router ;