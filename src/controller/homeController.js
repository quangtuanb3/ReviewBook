import pool from '../configs/connectDB'

var session;

let getHomePage = async (req, res) => {
    const [rows, fields] = await pool.execute('SELECT * FROM library');
    return res.render('index.ejs', { dataUser: rows })

}


let getLoginPage = async (req, res) => {
    const [rows, fields] = await pool.execute('SELECT * FROM user');
    return res.render('login2.ejs', { dataUser: rows })
}
let checkAuth = async (req, res) => {
    let username = req.body.username
    let password = req.body.password
    let [user] = await pool.execute(`select * from user`)
    for (let i = 0; i < user.length; i++) {
        if ((username == user[i].username) && (password == user[i].password)) {
            session = req.session;
            session.userid = req.body.username;
            res.redirect('/adminPage');
        } else {
            res.send("Incorect username or password")
        }
    }

};

let Logout = (req, res) => {
    req.session.destroy();
    res.redirect('/login');
}



let getAdminPage = async (req, res) => {
    session = req.session;
    if (session.userid) {
        let [rows, fields] = await pool.execute('SELECT * FROM library');
        return res.render('adminPage.ejs', { dataUser: rows })
    } else {
        res.redirect('/login');
    }
}

let handleUploadImg = async (req, res) => {
    if (req.fileValidationError) {
        return res.send(req.fileValidationError);
    }
    res.render("addBook_uploadedImg.ejs", { dataUser: req.file })
}



let getAddBookPage = async (req, res) => {
    res.render("addBookPage.ejs")
}

let getEditPage = async (req, res) => {
    let id = req.params.userID;
    let [user] = await pool.execute('select * from library where id = ?', [id])
    return res.render('editPage.ejs', { dataUser: user[0] });
}

let addNewBook = async (req, res) => {
    let { bookName, category, author, summary, review, bookStatus, Imgsrc } = req.body

    await pool.execute('insert into library (bookName, category, author, summary, review, bookStatus, Imgsrc) value (?,?,?,?,?,?,?)', [bookName, category, author, summary, review, bookStatus, Imgsrc])
    res.send(`Upload compeleted <br><br><a href="./add-book"><button>Return</button></a>`)
}

let deleteBook = async (req, res) => {
    let bookId = req.body.bookID;
    await pool.execute('Delete from library where id = ?', [bookId]);
    return res.redirect('./adminPage');

}
let updateBook = async (req, res) => {
    let { bookName, category, author, summary, review, bookStatus, Imgsrc, id } = req.body;
    await pool.execute('UPDATE library set bookName=?, category=?, author=?,summary=?,review=?, bookStatus=?,Imgsrc=? WHERE id =?',
        [bookName, category, author, summary, review, bookStatus, Imgsrc, id])
    return res.redirect('./adminPage');
}

let handleEditImg = async (req, res) => {
    if (!req.file) {
        res.render("editPage_changelessImg.ejs", { dataUser: req.body })
    }
    if (req.fileValidationError) {
        return res.send(req.fileValidationError);
    }
    res.render("editPage_uploadedImg.ejs", { dataUser: req })
}


module.exports = {
    getHomePage,
    getLoginPage,
    getAdminPage,
    getEditPage,
    checkAuth,
    handleUploadImg,
    Logout,
    getAddBookPage,
    addNewBook,
    deleteBook,
    updateBook,
    handleEditImg,
}