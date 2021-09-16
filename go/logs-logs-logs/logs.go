package logs

import (
	"strings"
)

const Version string = "2"

// Message extracts the message from the provided log line.
func Message(line string) string {
	s := strings.Split(line, ":")
	return strings.TrimSpace(s[1])
}

// MessageLen counts the amount of characters (runes) in the message of the log line.
func MessageLen(line string) int {
	return len([]rune(Message(line)))
}

// LogLevel extracts the log level string from the provided log line.
func LogLevel(line string) string {

	// v1: split + trim
	// s := strings.Split(line, "]")
	// r := strings.Split(s[0], "[")
	// error := strings.TrimSpace(r[1])
	// return strings.ToLower(error)

	// v2: split + trim
	s := strings.Split(line, ":")
	error := strings.Trim(s[0], "[]")
	return strings.ToLower(error)
}

// Reformat reformats the log line in the format `message (logLevel)`.
func Reformat(line string) string {
	// v1
	return Message(line) + " (" + LogLevel(line) + ")"

	// v2
	// return fmt.Sprintf("%s (%s)", Message(line), LogLevel(line))
}
