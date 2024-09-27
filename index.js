import express from "express";
import bodyParser from "body-parser";
import pg from "pg";

const app = express();
const port = 3000;

const db = new pg.Client({
    user: "postgres",
    host: "localhost",
    database: "Assignment",
    password: "123456",
    port: 5432
});

var registerDetails = [];
var patientDetails = [];

db.connect();

app.use(bodyParser.urlencoded({extended:true}));
app.use(express.static("public"))

//Refreshing values from database

async function refreshLoginDatabase () {
        registerDetails = [];
        const userResult = await db.query("SELECT * FROM user_details");
        registerDetails = userResult.rows;
        return registerDetails;
}

async function refreshPatientDatabase () {
    patientDetails = [];
    const patientResult = await db.query("SELECT * FROM patient_details");
    patientDetails = patientResult.rows;
    return patientDetails;
}

async function userVerification(input) {
    console.log("input : ", input);
    const credentialsDB = await refreshLoginDatabase();
    var stats;
    console.log("credentialsDB : ", credentialsDB);
    for(let indexP = 0; indexP < credentialsDB.length; indexP++) {
        if(credentialsDB[indexP].username === input.username && credentialsDB[indexP].password === input.password) {
            stats = credentialsDB[indexP].jobtype;
            console.log("stats : "); console.log(stats);
            return stats;
        }
    };
}


//HTTPS Requests
app.get("/", async (req,res)=> {
    const logindetails = await refreshLoginDatabase ();
    console.log("logindetails : "); console.log(logindetails);
    res.render("index.ejs", {logindetails});
});

app.get("/receptionPage", async (req,res)=> {
    const getPatientDetails = await refreshPatientDatabase ();
    console.log("getPatientDetails : "); console.log(getPatientDetails);
    res.render("receptionistPage.ejs", {details: getPatientDetails,});
});

app.get("/doctorPage", async (req,res)=> {
    const getPatientDetails = await refreshPatientDatabase ();
    console.log("getPatientDetails : "); console.log(getPatientDetails);
    res.render("doctorPage.ejs", {details: getPatientDetails,});
});

app.post("/login", async (req,res)=> {
    const input = req.body;
    const UVerify = await userVerification(input);
    console.log("UVerify : ", UVerify);
    if(UVerify) {
        if(UVerify === "R") {res.redirect("/receptionPage");}
        else if(UVerify === "D") {res.redirect("/doctorPage");}
    }
    else {
        res.redirect("/");
    }
});

app.listen(port, ()=> {
    console.log(`Server running on port ${port}. link http://localhost:${port} .`);
});



// CREATE TABLE user_details (
// 	id PRIMARY KEY,
// 	username VARCHAR(50);
// 	password VARCHAR(50);
// 	jobType CHAR(1);
// );