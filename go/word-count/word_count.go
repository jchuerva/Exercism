package wordcount

import (
	"regexp"
	"strings"
)

const version = 2

//Frequency is a map of strings to ints
type Frequency map[string]int

// iterate on array
// for _, word := range strings.Split(s, " ") { ... }
// for _, word := range strings.Fields(s) { ... }

// func WordCount(s string) Frequency {
// 	// initialize a map of words and their counts
// 	counts := make(Frequency)

// 	// loop for the string
// 	for _, word := range strings.Fields(s) {
// 	// for _, word := range strings.Split(s, " ") {
// 		// counts[word]++
// 	}
// 	return counts
// }

func WordCount(phrase string) Frequency {
	// initialize a map of words and their counts
	frequency := make(Frequency)

	// lower the phrase
	phrase = strings.ToLower(phrase)

	// split the phrase into words
	re := regexp.MustCompile(`([\w']+)`)
	words := re.FindAllString(phrase, -1)

	for _, word := range words {
		word = strings.Trim(word, "'")
		frequency[word]++
	}
	return frequency
}
