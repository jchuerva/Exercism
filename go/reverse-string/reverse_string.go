package reverse

func Version() string {
	return "2"
}

// not a very efficient solution
// func Reverse(input string) (result string) {
// 	for _,v := range input {
//     result = string(v) + result
//   }
//   return
// }

func Reverse(input string) string {
	r := []rune(input)
	for i, j := 0, len(r)-1; i < len(r)/2; i, j = i+1, j-1 {
		r[i], r[j] = r[j], r[i]
	}

	return string(r)
}
