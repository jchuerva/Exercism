package accumulate

// import "fmt"

// Accumulate is a function that receives an array of strings and an operation
// it returns the result of the operation applied to all the strings
func Accumulate(items []string, operation func(string) string) []string {
	result := []string{}
	for _, item := range items {
		result = append(result, operation(item))
		// result = append(result, fmt.Sprintf("%s", operation(item)))
	}
	return result
}












