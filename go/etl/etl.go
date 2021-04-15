package etl

import "strings"

// func Transform received a map of strings and returns a map of string
func Transform(input map[int][]string) map[string]int {
	new_map := make(map[string]int)
	for k, v := range input {
		for _, val := range v {
			new_map[strings.ToLower(val)] = k
		}
	}
	return new_map
}
