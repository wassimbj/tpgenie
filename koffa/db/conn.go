package db

import (
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
)

var dbConn *gorm.DB

func init() {
	dsn := "root:1234@tcp(tpgenie_db:3306)/ecommerce"
	db, _ := gorm.Open(mysql.Open(dsn), &gorm.Config{})

	if dbConn == nil {
		dbConn = db
	}
}

func Conn() *gorm.DB {
	return dbConn
}
