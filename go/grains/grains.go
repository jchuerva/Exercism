package grains

import "errors"

const Version = "1"

const maxSquares int = 64

func Square(n int) (uint64, error) {
	if n < 1 || n > maxSquares {
		return uint64(0), errors.New("Invalid")
	}

	return uint64(1 << uint(n-1)), nil
}

func Total() uint64 {
	return uint64((1 << maxSquares) - 1)
}
