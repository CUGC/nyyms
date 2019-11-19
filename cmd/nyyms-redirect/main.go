package main

import (
	"flag"
	"log"
	"net/http"
)

func main() {
	var bind string
	flag.StringVar(&bind, "http", ":8080", "HTTP host/port to bind to")
	flag.Parse()

	http.Handle("/", http.RedirectHandler("https://www.gleeclub.com/nyyms", http.StatusMovedPermanently))

	log.Printf("Listening on %q...", bind)
	if err := http.ListenAndServe(bind, nil); err != nil {
		log.Fatalf("Error binding to %q: %v", bind, err)
	}
}
