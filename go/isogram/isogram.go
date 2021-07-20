package isogram

import (
	"strings"
	"unicode"
)

func Version() string {
	return "3"
}

func IsIsogram(str string) bool {
	if len(str) == 0 {
		return true
	}

	// lowercase the str
	str = strings.ToLower(str)
	chars := make(map[rune]bool)

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
