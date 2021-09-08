package booking

import (
	"fmt"
	"time"
)

const Version string = "1"

// Schedule returns a time.Time from a string containing a date
func Schedule(date string) time.Time {
	time, _ := time.Parse("1/2/2006 15:04:05", date)
	return time
}

// HasPassed returns whether a date has passed
func HasPassed(date string) bool {
	now := time.Now()
	time, _ := time.Parse("January 2, 2006 15:04:05", date)
	return time.Before(now)

	// panic("Please implement the HasPassed function")
}

// IsAfternoonAppointment returns whether a time is in the afternoon
func IsAfternoonAppointment(date string) bool {
	time, _ := time.Parse("Monday, January 2, 2006 15:04:05", date)
	hour := time.Hour()
	return hour >= 12 && hour <= 18

	// panic("Please implement the IsAfternoonAppointment function")
}

// Description returns a formatted string of the appointment time
func Description(date string) string {
	desc := Schedule(date).Format("Monday, January 2, 2006, at 15:04")
	return fmt.Sprintf("You have an appointment on %s.", desc)
	// panic("Please implement the Description function")
}

// AnniversaryDate returns a Time with this year's anniversary
func AnniversaryDate() time.Time {
	now := time.Now()
	return time.Date(now.Year(), time.September, 15, 0, 0, 0, 0, time.UTC)
	// panic("Please implement the AnniversaryDate function")
}
