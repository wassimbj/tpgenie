package config

import (
	"github.com/gorilla/sessions"
)

const KEY = "KJFnskjfnbvkj9jrçzoihrngin0Jkjdvkjbfvz38993RJI3OHI3huçzhçzç83ç_'tçihfbsudà&"

var store *sessions.CookieStore

func init() {
	if store == nil {
		store = sessions.NewCookieStore([]byte(KEY))
	}
}

func Session() *sessions.CookieStore {
	return store
}
