package main

import (
	// "fmt"
    "github.com/gin-gonic/gin"
    // "net/http"
    // "log"
)
// import somthing // 沒用到的也不能引用，不會過編譯 

func main() {
    r := gin.Default()
    r.GET("/hihi", func(c *gin.Context) {
            c.JSON(200, gin.H{
            "message": "Hello World",
            })
    })
    r.Run() // listen and serve on 0.0.0.0:8080
}

// 只要go.mod有變都得下go mod tidy
// 好嚴格啊啊