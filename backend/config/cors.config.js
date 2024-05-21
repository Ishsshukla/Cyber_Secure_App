const cors = require("cors");

const corsOptions = {
  origin: "[http://localhost:5173]", 
  methods: "GET,HEAD,PUT,PATCH,POST,DELETE",
  preflightContinue: false,
  optionsSuccessStatus: 204,
};

const handleCors = cors(corsOptions);

module.exports = handleCors;
