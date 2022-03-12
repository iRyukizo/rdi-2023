package main

type Coord struct {
	x, y int
}

func main() {
	coord := Coord{}
	var c Coord = Coord{x: 1, y: 2} // Struct Literals
	println(coord.x, c.y)           // Struct Fields
}
