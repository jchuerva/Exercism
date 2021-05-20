package strand

import "strings"

func Version() string {
	return "2"
}

func ToRNA(input string) string {
	return strings.NewReplacer(
		"G", "C",
		"C", "G",
		"T", "A",
		"A", "U",
	).Replace(input)
}
