package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	fmt.Println(123)

	http.HandleFunc("/", func(writer http.ResponseWriter, request *http.Request) {
		fmt.Fprintf(writer, "Hello, its working")
	})

	log.Fatal(http.ListenAndServe(":8081", nil))

}
