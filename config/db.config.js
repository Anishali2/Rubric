'user strict';

const mysql = require('mysql2');

//local mysql db connection
const dbConn = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'pakistan',
  database : 'rubric'
});
dbConn.connect(function(err) {
    if (err) {
    return console.error('error: ' + err.message);
  }
  
  let createTables = 
  `${`create table if not exists ussers(
    id int primary key auto_increment,
    first_name varchar(255)not null,
    last_name varchar(255)not null,
    email varchar(255)not null,
    password varchar(255)not null) engine=innodb default charset=utf8mb4 collate=utf8mb4_0900_ai_ci
    
   
    `}`;
    let createNew = 
    `${`create table if not exists hhtti(
      id int primary key auto_increment,
      first_name varchar(255)not null,
      last_name varchar(255)not null,
      email varchar(255)not null,
      password varchar(255)not null) engine=innodb default charset=utf8mb4 collate=utf8mb4_0900_ai_ci
      
     
      `} `;
      
    // CREATE TABLE `users` (
    //   `id` bigint UNSIGNED NOT NULL,
    //   `first_name` varchar(255) NOT NULL,
    //   `last_name` varchar(255) NOT NULL,
    //   `email` varchar(255) NOT NULL,
    //   `password` varchar(50) NOT NULL
    // ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
    // CREATE  TABLE IF NOT EXISTS `employees` (
    //   `id` BIGINT UNSIGNED AUTO_INCREMENT,
    //   `first_name` VARCHAR(255) NOT NULL,
    //   `last_name` VARCHAR(255) NOT NULL,
    //   `email` VARCHAR(255) NOT NULL,
    //   `phone` VARCHAR(50) NOT NULL,
    //   `organization` VARCHAR(255) NOT NULL,
    //   `designation` VARCHAR(100) NOT NULL,
    //   `salary` DECIMAL(11,2) UNSIGNED DEFAULT 0.00,
    //   `status` TINYINT UNSIGNED DEFAULT 0,
    //   `is_deleted` TINYINT UNSIGNED DEFAULT 0,
    //   `created_at` DATETIME NOT NULL,
    //   `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    //   PRIMARY KEY (`id`))
    // ENGINE = InnoDB;

dbConn.query(createTables,createNew, function(err, results, fields) {
if (err) {
console.log(err.message);
}
});

      
});

// dbConn.connect(function(err) {
//   if (err) {
//     return console.error('error: ' + err.message);
//   }

//   let createTodos = `create table if not exists todos(
//                           id int primary key auto_increment,
//                           title varchar(255)not null,
//                           completed tinyint(1) not null default 0
//                       )`;

// dbConn.query(createTodos, function(err, results, fields) {
//     if (err) {
//       console.log(err.message);
//     }
//   });

//   dbConn.end(function(err) {
//     if (err) {
//       return console.log(err.message);
//     }
//   });
// });

module.exports = dbConn;