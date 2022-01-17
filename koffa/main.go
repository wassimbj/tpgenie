package main

import (
	"net/http"

	"koffa.service/api"
)

type Products struct {
	Id          string `json:"id"`
	Name        string `json:"title"`
	Image       string `json:"image"`
	Description string `json:"description"`
	Price       string `json:"price"`
	CategoryId  string `json:"category_id"`
	Created     string `json:"created"`
	Modified    string `json:"modified"`
}

type MakeOrderData struct {
	ProductId   int    `json:"product_id"`
	Qty         int    `json:"qty"`
	UserPhone   string `json:"user_phone"`
	UserAddress string `json:"user_address"`
	UserName    string `json:"user_name"`
}

func main() {
	// dsn := "root:1234@tcp(tpgenie_db:3306)/ecommerce"
	// db, _ := gorm.Open(mysql.Open(dsn), &gorm.Config{})

	router := api.Routes()

	// var prods Products
	// db.Take(&prods)

	/*
		? all the data will be saved in the session
		TODO: Save users orders, data: {product_id, qty, user_email, user_address}
	*/

	// router.HandleFunc("/order/add", func(res http.ResponseWriter, req *http.Request) {
	// 	body, _ := core.ReadBody(req.Body)
	// 	var data MakeOrderData
	// 	json.Unmarshal([]byte(body), &data)

	// 	db.Create(&data)
	// }).Methods("POST")

	// router.HandleFunc("/order/cancel", func(res http.ResponseWriter, req *http.Request) {
	// 	body, _ := core.ReadBody(req.Body)
	// 	var data MakeOrderData
	// 	json.Unmarshal([]byte(body), &data)

	// 	db.Create(&data)
	// }).Methods("POST")

	http.ListenAndServe(":8998", router)
}
