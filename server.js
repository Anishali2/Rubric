const express    = require("express")
const multer     = require('multer');
const bodyParser = require('body-parser');
const app        = express()

var storage = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, './uploads')
    },
    filename: function (req, file, cb) {
      cb(null, file.originalname)
    }
})
var upload = multer({ storage: storage })

app.use (bodyParser.urlencoded({ extended: true }))
app.use (bodyParser.json())
app.use ('/api/v1/users', require('./src/routes/user.routes'))
app.use ('/api/v1/blogs', require('./src/routes/blog.routes'))



app.listen(5000,function () {
    console.log("express server working on 5000")
})
