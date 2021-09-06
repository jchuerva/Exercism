package luhn

import (
	"strconv"
	"strings"
)

func Version() string {
	return "1"
}

func Valid(num string) bool {

	// strip spaces from num
	num = strings.Replace(num, " ", "", -1)

	if len(num) <= 1 {
		return false
	}

	// double every digit starting from the right
	// if the product is greater than 9, sum the digits
	// sum all the digits
	// if the sum is divisible by 10, the number is valid
	var sum int
	for i := len(num) - 1; i >= 0; i-- {
		d, error := strconv.Atoi(string(num[i]))

		// if contains a non number
		if error != nil {
			return false
		}

		if (len(num)%2 == 0 && i%2 == 0) || (len(num)%2 == 1 && i%2 == 1) {
			d *= 2
			if d > 9 {
				d -= 9
			}
		}
		sum += d
	}

	return sum%10 == 0
}
