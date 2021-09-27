package clock

import "fmt"

const Version string = "1"
const minutesInADay int = 24 * 60

type Clock struct {
	minutes int
}

func New(h, m int) Clock {
	minutes := (h*60 + m) % minutesInADay
	if minutes < 0 {
		minutes += minutesInADay
	}
	// return Clock{minutes: minutes}
	return Clock{minutes}
}

func (c Clock) String() string {
	return fmt.Sprintf("%02d:%02d", c.minutes/60, c.minutes%60)
}

func (c Clock) Add(m int) Clock {
	return New(0, c.minutes+m)
}

func (c Clock) Subtract(m int) Clock {
	return New(0, c.minutes-m)
}
