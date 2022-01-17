package core

import (
	"encoding/json"
	"io"
	"io/ioutil"
	"net/http"
)

// @params req.Body
// reads http request body, returns JSON
func ReadBody(body io.ReadCloser) (string, error) {
	data, err := ioutil.ReadAll(body)
	s := string(data)
	return s, err
}

// respond to a request with a json
type ResOpts struct {
	Status int
	Msg    interface{}
}

func Respond(res http.ResponseWriter, opts ResOpts) (int, error) {
	res.Header().Set("Content-Type", "application/json")
	res.WriteHeader(opts.Status)
	jsonData, _ := json.Marshal(opts.Msg)
	return res.Write(jsonData)
}
