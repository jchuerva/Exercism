package raindrops

import "strconv"

// Convert converts a number to a string, the contents of which depend on the number's factors
func Convert(number int) string {
	result := ""

	if number%3 == 0 { result += string("Pling")}
	if number%5 == 0 { result += string("Plang")}
	if number%7 == 0 { result += string("Plong")}

	if result == "" { result = strconv.Itoa(number)}

	return result
}
