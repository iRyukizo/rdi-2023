package main

func fibonacci(n int) int {
	n0 := 0
	n1 := 1
	for i := 0; i < n; i++ {
		n2 := n0 + n1
		n0 = n1
		n1 = n2
	}
	return n1
}

func main() {
	fibonacci(5)
}
