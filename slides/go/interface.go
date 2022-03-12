package main

type Printable interface {
	Print()
}

type Foo struct {
	x, y int
}

func (f Foo) Print() {
	println("Foo{x:", f.x, ", y:", f.y, "}")
}

func Print(p Printable) {
	p.Print()
}

func main() {
	f := Foo{1, 2}
	Print(f)
}
