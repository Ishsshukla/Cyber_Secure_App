const User = require('../models/user.model');
const Otp = require('../models/otp.model');
const send_otp = require('../utils/send_otp.util');

const auth_controller = {
  register: async (req, res) => {
    try {
      const { number, name } = req.body;
      const otp = Math.floor(100000 + Math.random() * 900000);

      const user = new User({
        number,
        name
      });
      await user.save();

      const OTP = new Otp({
        number,
        otp
      });

      await OTP.save(); 

      send_otp(number, otp);

      res.status(200).json({ message: "User created successfully" });
    } catch (err) {
      console.error(err);
      res.status(500).json({ message: "Internal Server Error" });
    }
  },
  verify_otp : async (req, res) => {
    try {
      const {otp } = req.body;
      if(!otp) return res.status(400).json({message : "OTP is required"});
      const userOtp = await Otp.findOne({otp}); 

      if(!userOtp) return res.status(400).json({message : "Invalid OTP"});
      await Otp.deleteOne({otp});

      res.status(200).json({message : "OTP verified successfully"});

    } catch (err) {
      console.error(err);
      res.status(500).json({ message: "Internal Server Error" });
    }
  }
}; 

module.exports = auth_controller;