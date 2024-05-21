require('dotenv').config() ;

module.exports = {
  PORT: process.env.PORT || 3000,
  DB_URI: process.env.DB_URI || "mongodb://localhost:27017/cybercrime",
  NEWS_API_KEY: process.env.NEWS_API_KEY,
  TWILIO_ACCOUNT_SID: process.env.TWILIO_ACCOUNT_SID,
  TWILIO_AUTH_TOKEN : process.env.TWILIO_AUTH_TOKEN,
  TwILIO_PHONE_NUMBER : process.env.TwILIO_PHONE_NUMBER,
};