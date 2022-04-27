package main

import (
	"github.com/gin-gonic/gin"
	"github.com/guptaankit015/authority/internal"
)

func main() {
	internal.Init()
	router := gin.Default()
	router.GET("/health", internal.HealthCheck)

	router.Run("0.0.0.0:8000")
}
