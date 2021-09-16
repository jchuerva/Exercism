package elon

import "fmt"

const Version string = "1"

// Car implements a remote controlled car.
type Car struct {
	speed        int
	batteryDrain int

	battery  int
	distance int
}

// Track implements a race track.
type Track struct {
	distance int
}

// CreateCar creates a new car with given specifications.
func CreateCar(speed, batteryDrain int) *Car {
	return &Car{speed: speed, batteryDrain: batteryDrain, battery: 100, distance: 0}
}

// CreateTrack creates a new track with given distance.
func CreateTrack(distance int) Track {
	return Track{distance: distance}
}

// Drive drives the car one time.
func (car *Car) Drive() {
	if car.batteryDrain <= car.battery {
		car.distance += car.speed
		car.battery -= car.batteryDrain
	}
}

// CanFinish checks if a car is able to finish a certain track.
func (car *Car) CanFinish(track Track) bool {
	r := (track.distance - car.distance) / car.speed
	return car.batteryDrain*r < car.battery
}

// DisplayDistance displays the distance the car is driven.
func (car *Car) DisplayDistance() string {
	return fmt.Sprintf("Driven %d meters", car.distance)
}

// DisplayBattery displays the battery level.
func (car *Car) DisplayBattery() string {
	return fmt.Sprintf("Battery at %d%%", car.battery)
}
