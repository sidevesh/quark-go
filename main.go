package main

import "net"
import "net/http"
import "log"
import "github.com/zserge/webview"

var DEBUG_PORT = "not_set"
var WEB_APP_ADDRESS = "not_set"
var address = "http://localhost:3010"

func main() {
  if DEBUG_PORT != "not_set" {
    address = "http://localhost:"+DEBUG_PORT
  } else if WEB_APP_ADDRESS != "not_set" {
    address = WEB_APP_ADDRESS
  }

  if DEBUG_PORT == "not_set" && WEB_APP_ADDRESS == "not_set" {
    ln, err := net.Listen("tcp", "127.0.0.1:0")
    if err != nil {
      log.Fatal(err)
    }
    defer ln.Close()
    go func() {
      fs := http.FileServer(http.Dir("bundle"))
      http.Handle("/", fs)
      log.Fatal(http.Serve(ln, nil))
    }()
    address = "http://"+ln.Addr().String()
  }
  webview.Open("Quark", address, 400, 300, true)
}

