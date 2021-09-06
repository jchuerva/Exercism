package pangram

import "strings"

const version = 1

func IsPangram(s string) bool {
	// convert s to lowercase
	s = strings.ToLower(s)
	// iterate over alphabet(a-z)
	for c := 'a'; c <= 'z'; c++ {
		// check if c is in s
		if strings.IndexRune(s, c) == -1 {
			return false
		}
	}
	return true
}
