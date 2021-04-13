// This is a "stub" file.  It's a little start on your solution.
// It's not a complete solution though; you have to write some code.

// Package triangle should have a package comment that summarizes what it's about.
// https://golang.org/doc/effective_go.html#commentary
package triangle

import "math"
// import "fmt"


// Notice KindFromSides() returns this type. Pick a suitable data type.
type Kind int

const (
    // Pick values for the following identifiers used by the test program.
    NaT Kind = iota// not a triangle
    Equ // equilateral
    Iso // isosceles
    Sca // scalene
)

func isInvalidTriangle(a, b, c float64) bool {
	sides := []float64{a, b, c}

	for _, side := range sides {
		if side <= 0 || math.IsNaN(side) || math.IsInf(side, 0) {
			return true
		}
	}

	if (a+b < c || a+c < b || b+c < a) {
		return true
	}

	return false
}

// KindFromSides should have a comment documenting it.
func KindFromSides(a, b, c float64) Kind {
	if isInvalidTriangle(a, b, c) {
		return NaT
	}

	if a == b && b == c {
		return Equ
	}

	if (a == b || b == c || a ==c) {
		return Iso
	}

	return Sca
}
