const auth_controller = require('../controllers/auth.controller');
const router = require('express').Router();

router.post('/register', auth_controller.register);
router.post('/verify-otp', auth_controller.verify_otp);

module.exports = router;