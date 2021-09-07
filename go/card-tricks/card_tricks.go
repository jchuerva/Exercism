package cards

const Version string = "1"

// GetItem retrieves an item from a slice at given position. The second return value indicates whether
// a the given index existed in the slice or not.
func GetItem(slice []uint8, index int) (uint8, bool) {
	if index < 0 || index >= len(slice) {
		return 0, false
	} else {
		return slice[index], true
	}
	// panic("Please implement the GetItem function")
}

// SetItem writes an item to a slice at given position overwriting an existing value.
// If the index is out of range it is be appended.
func SetItem(slice []uint8, index int, value uint8) []uint8 {
	if index < 0 || index >= len(slice) {
		return append(slice, value)
	} else {
		slice[index] = value
		return slice
	}
	// panic("Please implement the SetItem function")
}

// PrefilledSlice creates a slice of given length and prefills it with the given value.
func PrefilledSlice(value, length int) []int {
	if length <= 0 {
		return nil
	}

	slice := make([]int, length)
	for i := 0; i < length; i++ {
		slice[i] = value
	}
	return slice
	// panic("Please implement the PrefilledSlice function")
}

// RemoveItem removes an item from a slice by modifying the existing slice.
func RemoveItem(slice []int, index int) []int {
	if index < 0 || index >= len(slice) {
		return slice
	} else {
		return append(slice[:index], slice[index+1:]...)
	}
	// panic("Please implement the RemoveItem function")
}
