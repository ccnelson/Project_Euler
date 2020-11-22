// placeholder

package main

import "fmt"
import "time"

func main() {

    var finalanswer int = 0

    start := time.Now()



    elapsed := time.Since(start)

    fmt.Println("Answer:\t", finalanswer)
    fmt.Println("Took:\t", elapsed)
}