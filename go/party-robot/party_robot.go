package partyrobot

import "fmt"

func Version() string {
	return "1"
}

// Welcome greets a person by name.
func Welcome(name string) string {
	// return "Welcome to my party, " + name + "!"
	return fmt.Sprintf("Welcome to my party, %s!", name)
	// panic("Please implement the Welcome function")
}

// HappyBirthday wishes happy birthday to the birthday person and stands out his age.
func HappyBirthday(name string, age int) string {
	return fmt.Sprintf("Happy birthday %s! You are now %d years old!", name, age)
	// panic("Please implement the HappyBirthday function")
}

// AssignTable assigns a table to each guest.
func AssignTable(name string, table int, neighbour string, direction string, distance float64) string {
	return fmt.Sprintf("Welcome to my party, %s!\nYou have been assigned to table %X. Your table is %s, exactly %.1f meters from here.\nYou will be sitting next to %s.", name, table, direction, distance, neighbour)
	// panic("Please implement the AssignTable function")
}
