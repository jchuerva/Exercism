package isogram

import "strings"
import "regexp"

func Version() string {
	return "2a"
}

var pattern = regexp.MustCompile("[^a-zA-Z0-9]+")

func IsIsogram(str string) bool {

	if len(str) == 0 {
		return true
	}

	// lowercase the str
	str = strings.ToLower(str)

	// remove non alphanumeric characters
	trimStr := pattern.ReplaceAllString(str, "")

	// iterate over str and check if there are any duplicate letters
	for _, c := range trimStr {
		if strings.Count(trimStr, string(c)) > 1 {
			return false
		}
	}

	return true
}
