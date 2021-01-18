require("dotenv").config();
const fs = require("fs");
const path = require("path");
const db = require("../db")
const { promisify } = require("util")
const read = promisify(fs.readFile);
const dataPath = path.join(__dirname, "../data/northwind.sql");
const part3 = path.join(__dirname, "../data/part3.sql");
const reviews = path.join(__dirname, "../data/reviews.sql");
const authors = path.join(__dirname, "../data/authors.sql");
const insertData = async () => {
  try {
    const data = await read(dataPath);
    const sqlQueryString = data.toString();
    await db.query(sqlQueryString)

    /*articles*/
    const part33 = await read(part3);
    const sqlpart = part33.toString();
    await db.query(sqlpart)

    /*reviews*/
    const reviewspog = await read(reviews);
    const sqlReviews = reviewspog.toString();
    await db.query(sqlReviews)

    /*authors */
    const authorspog = await read(authors);
    const sqlAuthors = authorspog.toString();
    await db.query(sqlAuthors)


    console.info(`All data set! you are ready to go 🔥🔥🔥`);
  } catch (e) {
    console.error("Data insertion is failed 😓");
    console.log(e);
  }
  db.pool.end()
};


insertData()