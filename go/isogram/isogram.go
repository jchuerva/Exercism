package isogram

import (
	"strings"
	"unicode"
)

func Version() string {
	return "2b"
}

func IsIsogram(str string) bool {
	if len(str) == 0 {
		return true
	}

	// lowercase the str
	str = strings.ToLower(str)

	// iterate over str and check if there are any duplicate letters
	for _, c := range str {
		// check if the unicode is a letter is much faster than using a regex
		if unicode.IsLetter(rune(c)) {
			if strings.Count(str, string(c)) > 1 {
				return false
			}
		}
	}

	return true
}
