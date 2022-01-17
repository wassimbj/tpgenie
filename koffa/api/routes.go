package api

import (
	"encoding/json"
	"net/http"

	"github.com/gorilla/mux"
	"koffa.service/core"
	"koffa.service/db"
)

type MakeOrderData struct {
	ProductId   int    `json:"product_id"`
	Qty         int    `json:"qty"`
	UserPhone   string `json:"user_phone"`
	UserAddress string `json:"user_address"`
	UserName    string `json:"user_name"`
}

func Routes() *mux.Router {
	router := mux.NewRouter()

	router.HandleFunc("/order/create", func(res http.ResponseWriter, req *http.Request) {
		body, _ := core.ReadBody(req.Body)
		var data MakeOrderData
		json.Unmarshal([]byte(body), &data)

		db.Conn().Create(&data)
	})

	return router

}
