package blackjack

const Version string = "1"

var myCards = map[string]int{
	"ace":   11,
	"two":   2,
	"three": 3,
	"four":  4,
	"five":  5,
	"six":   6,
	"seven": 7,
	"eight": 8,
	"nine":  9,
	"ten":   10,
	"jack":  10,
	"queen": 10,
	"king":  10,
}

// ParseCard returns the integer value of a card following blackjack ruleset.
func ParseCard(card string) int {
	return myCards[card]
	// panic("Please implement the ParseCard function")
}

// IsBlackjack returns true if the player has a blackjack, false otherwise.
func IsBlackjack(card1, card2 string) bool {
	return myCards[card1]+myCards[card2] == 21
	// panic("Please implement the IsBlackjack function")
}

// LargeHand implements the decision tree for hand scores larger than 20 points.
func LargeHand(isBlackjack bool, dealerScore int) string {
	// switch {
	// case !isBlackjack:
	// 	return "P"
	// case dealerScore != 10 && dealerScore != 11:
	// 	return "W"
	// default:
	// 	return "S"
	// }

	if !isBlackjack {
		return "P"
	}
	if dealerScore != 10 && dealerScore != 11 {
		return "W"
	}
	return "S"

	// panic("Please implement the LargeHand function")
}

// SmallHand implements the decision tree for hand scores with less than 21 points.
func SmallHand(handScore, dealerScore int) string {
	switch {
	case handScore >= 17:
		return "S"
	case 12 <= handScore && handScore <= 16 && dealerScore < 7:
		return "S"
	case handScore >= 11:
		return "H"
	default:
		return "H"
	}

	// panic("Please implement the SmallHand function")
}

// FirstTurn returns the semi-optimal decision for the first turn, given the cards of the player and the dealer.
// This function is already implemented and does not need to be edited. It pulls the other functions together in a
// complete decision tree for the first turn.
func FirstTurn(card1, card2, dealerCard string) string {
	handScore := ParseCard(card1) + ParseCard(card2)
	dealerScore := ParseCard(dealerCard)

	if 20 < handScore {
		return LargeHand(IsBlackjack(card1, card2), dealerScore)
	}
	return SmallHand(handScore, dealerScore)
}
