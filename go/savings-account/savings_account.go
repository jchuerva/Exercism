package savings

func Version() string {
	return "1"
}

// FixedInterestRate has a value of 5% (5/100)
const FixedInterestRate float32 = 5. / 100

// GetFixedInterestRate returns the FixedInterestRate constant
func GetFixedInterestRate() float32 {
	return FixedInterestRate
	// panic("Please create the FixedInterestRate constant in the outer scope and then implement the GetFixedInterestRate function")
}

// DaysPerYear has a value of 365
const DaysPerYear int = 365

// GetDaysPerYear returns the DaysPerYear constant
func GetDaysPerYear() int {
	return DaysPerYear
	// panic("Please create the DaysPerYear constant in the outer scope and then implement the GetDaysPerYear function")
}

// Jan-Dec have values of 1-12
const (
	Jan = (iota + 1)
	Feb
	Mar
	Apr
	May
	Jun
	Jul
	Aug
	Sep
	Oct
	Nov
	Dec
)

// GetMonth returns the value for the given month
func GetMonth(month int) int {
	return month

	// panic("Please use a block and the Go enumerator in the outer scope to create twelve consecutive untyped numeric constants, one for each month of the year. January should have a value of 1. Name them 'Jan', 'Feb', 'Mar', etc., and then implement the GetMonth function")
}

// AccNo type for a string - this is a stub type included to demonstrate how the untyped string constant can be used where this type is required
type AccNo string

// AccountNo has a value of XF348IJ
const AccountNo AccNo = "XF348IJ"

// GetAccountNumber returns the AccountNo constant
func GetAccountNumber() AccNo {
	return AccountNo
	// panic("Please create the AccountNo untyped string constant in the outer scope and then implement the GetAccountNumber function")
}
