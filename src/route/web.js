import express from "express";
import homeController from "../controller/homeController"
import multer from "multer";
import path from 'path';

var appRoot = require('app-root-path')

let router = express.Router();

const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, appRoot + "/src/public/images")
    },
    filename: function (req, file, cb) {
        cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname));
    }
})

const imageFilter = function (req, file, cb) {
    if (!file.originalname.match(/\.(jpg|JPG|jpeg|JPEG|png|PNG|gif|GIF)$/)) {
        req.fileValidationError = 'Only image files are allowed!';
        return cb(new Error('Only image files are allowed!'), false);
    }
    cb(null, true);
};
exports.imageFilter = imageFilter;
let upload = multer({ storage: storage, fileFilter: imageFilter });

const initWebRoute = (app) => {
    router.get('/', homeController.getHomePage)
    router.get('/login', homeController.getLoginPage)
    router.post('/auth', homeController.checkAuth)
    router.get('/adminPage', homeController.getAdminPage)
    router.get('/editPage/:userID', homeController.getEditPage)
    router.post('/handleUpload-img', upload.single('book-img'), homeController.handleUploadImg)
    router.get("/logout", homeController.Logout)
    router.get("/add-book", homeController.getAddBookPage)
    router.post("/added-new-book", homeController.addNewBook)
    router.post("/delete-book", homeController.deleteBook)
    router.post('/handleEdit-img', upload.single('book-img'), homeController.handleEditImg)
    router.post("/update-book", homeController.updateBook)

    return app.use('/', router)
}



module.exports = initWebRoute;