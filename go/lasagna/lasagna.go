package lasagna

func Version() string {
	return "1"
}

// TODO: define the 'OvenTime()' function
func OvenTime() int {
	return 40
}

// TODO: define the 'RemainingOvenTime()' function
func RemainingOvenTime(actual int) int {
	return OvenTime() - actual
}

// TODO: define the 'PreparationTime()' function
func PreparationTime(layers int) int {
	return layers * 2
}

// TODO: define the 'ElapsedTime()' function
func ElapsedTime(layers int, current int) int {
	return PreparationTime(layers) + OvenTime() - RemainingOvenTime(current)
}
