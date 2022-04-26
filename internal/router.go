package internal

import "github.com/gin-gonic/gin"

func Init() {

}

func HealthCheck(c *gin.Context) {
	c.JSON(200, map[string]interface{}{"status": "healthy"})
}
