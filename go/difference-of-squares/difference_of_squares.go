package diffsquares

func Version() string {
	return "2"
}

func SquareOfSum(num int) int {
	sum := num * (num + 1) / 2 // http://www.trans4mind.com/personal_development/mathematics/series/sumNaturalNumbers.htm#mozTocId914933
	return sum * sum

	// sum := 0
	// for i := 1; i <= num; i++ {
	// 	sum += i
	// }
	// return sum * sum
}

func SumOfSquares(num int) int {
	return num * (num + 1) * (2*num + 1) / 6 // http://www.trans4mind.com/personal_development/mathematics/series/sumNaturalSquares.htm#summation

	// sum := 0
	// for i := 1; i <= num; i++ {
	// 	sum += i * i
	// }
	// return sum
}

func Difference(num int) int {
	return SquareOfSum(num) - SumOfSquares(num)
}
