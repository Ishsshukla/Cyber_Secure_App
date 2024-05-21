const mongoose = require('mongoose');
const userSchema = new mongoose.Schema({
  number : {
    type : Number ,
    required : true ,
  } , 
  name : {
    type : String ,
    required : true ,
  } ,
  isVerified : {
    type : Boolean ,
    default : false ,
  } ,
  createdAt : {
    type : Date ,
    default : Date.now ,
  }
})

module.exports = mongoose.model('User', userSchema) ;