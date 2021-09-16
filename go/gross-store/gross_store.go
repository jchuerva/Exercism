package gross

// Units store the Gross Store unit measurement
func Units() map[string]int {
	return map[string]int{
		"quarter_of_a_dozen": 3,
		"half_of_a_dozen":    6,
		"dozen":              12,
		"small_gross":        120,
		"gross":              144,
		"great_gross":        1728,
	}
}

// NewBill create a new bill
func NewBill() map[string]int {
	return map[string]int{}
}

// AddItem add item to customer bill
func AddItem(bill, units map[string]int, item, unit string) bool {
	item_in_units, ok := units[unit]
	if !ok {
		return false
	}

	bill[item] += item_in_units
	return true
}

// RemoveItem remove item from customer bill
func RemoveItem(bill, units map[string]int, item, unit string) bool {
	v, ok := units[unit]
	if !ok {
		return false
	}

	current, ok := bill[item]
	if !ok || v > current {
		return false
	}

	bill[item] -= v

	if v == current {
		delete(bill, item)
	}

	return true
}

// GetItem return the quantity of item that the customer has in his/her bill
func GetItem(bill map[string]int, item string) (int, bool) {
	v, ok := bill[item]
	if !ok {
		return 0, false
	}
	return v, true
}
