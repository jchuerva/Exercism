package isogram

import (
	"strings"
	"unicode"
)

func Version() string {
	return "4"
}

func IsIsogram(str string) bool {
	// lowercase the str
	str = strings.ToLower(str)
	chars := map[rune]bool{}

	// iterate over str and check if there are any duplicate letters
	for _, c := range str {
		// check if the unicode is a letter is much faster than using a regex
		if !unicode.IsLetter(c) {
			continue
		}
		if chars[c] {
			return false
		}
		chars[c] = true
	}
	return true
}
