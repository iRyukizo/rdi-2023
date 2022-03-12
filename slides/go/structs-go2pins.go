package main

var (
	struct_counter int = 2
	struct_Foo     int = 1
	struct_Bar     int = 2
)

func main() {
	foo := [2]int{1, 0}
	bar := [3]int{2, 0, 42}
	println(foo[1], bar[1], bar[2])
}
