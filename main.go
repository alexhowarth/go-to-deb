package main

import (
	"log"
	"time"
)

func main() {
	for {
		log.Println("hello world!")
		time.Sleep(5 * time.Second)
	}
}
