package speed

const Version string = "1"

// Car implements a remote controlled car.
type Car struct {
	speed        int
	batteryDrain int
	battery      int
	distance     int // default to 0
}

// NewCar creates a new remote controlled car with full battery and given specifications.
func NewCar(speed, batteryDrain int) Car {
	return Car{speed: speed, batteryDrain: batteryDrain, battery: 100}

	// panic("Please implement the NewCar function")
}

// Track implements a race track.
type Track struct {
	distance int
}

// NewTrack created a new track
func NewTrack(distance int) Track {
	return Track{distance: distance}

	// panic("Please implement the NewTrack function")
}

// Drive drives the car one time. If there is not enough battery to drive on more time,
// the car will not move.
func Drive(car Car) Car {
	if car.batteryDrain > car.battery {
		return car
	}

	car.distance += car.speed
	car.battery -= car.batteryDrain
	return car

	// panic("Please implement the Drive function")
}

// CanFinish checks if a car is able to finish a certain track.
func CanFinish(car Car, track Track) bool {
	r := (track.distance - car.distance) / car.speed
	return car.batteryDrain*r < car.battery

	// panic("Please implement the CanFinish function")
}
