package scrabble

import (
	"unicode"
)

// Score compures the scrabble score for a word
func Score(word string) int {
	value := 0
	for _, r := range word {
		value += valor(r)
	}
	return value
}

func valor(char rune) int {
	switch unicode.ToLower(char){
	case 'a','e','i','o','u','l','n','r','s','t':
		return 1
	case 'd','g':
		return 2
	case 'b','c','m','p':
		return 3
	case 'f','h','v','w','y':
		return 4
	case 'k':
		return 5
	case 'j','x':
		return 8
	case 'q','z':
		return 10
	default:
		return 0
	}
}