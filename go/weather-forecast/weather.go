// Package weather returns the weather for a location
package weather

var (
	// current condition
	CurrentCondition string
	// current location
	CurrentLocation string
)

// Log return a log with the currentc ondition and current location
func Log(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}

