package main // Required for a standalone executable.

import "fmt" // fmt implements formatted I/O.

/* When this program is executed the first function that runs is main.main() */
func main() {
	fmt.Println("Hello, world") // Call Println() from the fmt package.


/* Next Section */
	a := 42            // Initialize and assign to a single variable
	b, c := true, 32.0 // Initialize and assign to multiple variables
	d := "string"
	fmt.Println(a, b, c, d) // 42 true 32 string


/* Types */
	/* User specified types */
	const e int32 = 12         // 32-bit integer
	const f float32 = 20.5      // 32-bit float
	var g complex128 = 1 + 4i  // 128-bit complex number
	var h uint16 = 14          // 16-bit unsigned integer

	/* Default types */
	n := 42              // int
	pi := 3.14           // float64
	x, y := true, false  // bool
	z := "Go is awesome" // string

	fmt.Printf("user-specified types:\n %T %T %T %T\n", e, f, g, h)
	fmt.Printf("default types:\n %T %T %T %T %T\n", n, pi, x, y, z)
}