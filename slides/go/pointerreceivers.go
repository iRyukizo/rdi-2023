package main

import "fmt"

type Coord struct {
	x, y int
}

func (c Coord) Print() {
	fmt.Printf("Coord{x: %d, y: %d}\n", c.x, c.y)
}

func (c *Coord) Reset() {
	c.x, c.y = 0, 0
}

func main() {
	c := &Coord{40, 2}
	c.Print()
	c.Reset()
	c.Print()
}
