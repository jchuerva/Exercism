package romannumerals

import "fmt"

func Version() string {
	return "1"
}

type arabicToRoman struct {
	arabic int
	roman  string
}

var dictionary = []arabicToRoman{
	{1000, "M"},
	{900, "CM"},
	{500, "D"},
	{400, "CD"},
	{100, "C"},
	{90, "XC"},
	{50, "L"},
	{40, "XL"},
	{10, "X"},
	{9, "IX"},
	{5, "V"},
	{4, "IV"},
	{1, "I"},
}

func ToRomanNumeral(number int) (string, error) {

	if number < 1 || number > 3000 {
		return "", fmt.Errorf("%d out of range for Roman numeral", number)
	}

	romanNumber := ""
	for _, dic := range dictionary {
		for number >= dic.arabic {
			number -= dic.arabic
			romanNumber += dic.roman
		}
	}

	return romanNumber, nil
}
