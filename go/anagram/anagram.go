package anagram

import (
	"sort"
	"strings"
)

const version = 1

// alphagram returns the chars sorted of a word.
func alphagram(subject string) string {
	chars := strings.Split(strings.ToLower(subject), "")
	sort.Strings(chars)
	return strings.Join(chars, "")
}

func Detect(subject string, candidates []string) (matches []string) {
	alphaWord := alphagram(subject)
	for _, candidate := range candidates {
		if alphaWord == alphagram(candidate) && !strings.EqualFold(subject, candidate) {
			matches = append(matches, candidate)
		}
	}
	return
}
