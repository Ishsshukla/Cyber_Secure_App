const express = require('express') ; 
const app = express() ;
const { PORT } = require('./config/env.config') ;
const connectDB = require('./config/db.config');
const trendsRoutes = require('./routes/trends.route') ;
const authRoutes = require('./routes/auth.route') ;
const handleCors = require('./config/cors.config') ;

app.use(express.json()) ;
app.use(express.urlencoded({ extended: true })) ;
app.use('/v1/api', trendsRoutes) ;
app.use('/v1/api/auth', authRoutes) ;
app.use(handleCors) ;

connectDB() ;

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`)
})