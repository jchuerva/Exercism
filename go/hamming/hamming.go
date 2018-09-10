package hamming

import "fmt"

func Distance(a, b string) (int, error) {
	if len(a) != len(b) {
		return -1, fmt.Errorf("Strands must be the same length")
	}
	var distance int
	for n, c := range []byte(a) {
		if c != b[n] {
			distance++
		}
	}
	return distance, nil
}
