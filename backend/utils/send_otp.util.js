const { TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN, TWILIO_PHONE_NUMBER } = require('../config/env.config');

const send_otp = (phoneNumber , otp ) => {
   
  const accountSid = TWILIO_ACCOUNT_SID;
  const authToken = TWILIO_AUTH_TOKEN;
  const client = require('twilio')(accountSid, authToken);

  client.messages
    .create({
      body: `Your OTP is: ${otp}`,
      from: TWILIO_PHONE_NUMBER,
      to: phoneNumber
    })
    .then(message => {
      console.log(message.sid);
      res.status(200).json({ message: 'OTP sent successfully' });      
    })
    .catch(error => {
      console.log(error);
      res.status(500).json({ error: 'Failed to send OTP' });
    });
};

module.exports = send_otp;