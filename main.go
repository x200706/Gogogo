package main

import 	"github.com/gin-gonic/gin"
import 	"net/http"
import 	"log"

func main() {
    r := gin.Default()
    r.GET("/ping", func(c *gin.Context) {
            c.JSON(200, gin.H{
            "message": "為甚麼要演奏春日影",
            })
    })
    r.Run() // listen and serve on 0.0.0.0:8080
}
