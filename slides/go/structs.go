package main

type Foo struct {
	x int
}

type Bar struct {
	x, y int
}

func main() {
	foo := Foo{}
	bar := Bar{y: 42}
	println(foo.x, bar.x, bar.y)
}
