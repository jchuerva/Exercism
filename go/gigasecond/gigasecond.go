// Package gigasecond should have a package comment that summarizes what it's about.
// https://golang.org/doc/effective_go.html#commentary
package gigasecond

// import path for the time package from the standard library
import (
	"time"
)

// GIGASECOND is one billion (10**9) seconds
const GIGASECOND = time.Duration(1e9) * time.Second

// AddGigasecond should have a comment documenting it.
func AddGigasecond(t time.Time) time.Time {
	return t.Add(GIGASECOND)
}
