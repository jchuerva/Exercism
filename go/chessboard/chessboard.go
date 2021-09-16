package chessboard

const Version string = "1"

// Rank stores if a square is occupied by a piece
type Rank []bool

// Chessboard contains eight Ranks, accessed with values from 'A' to 'H'
type Chessboard map[byte]Rank

// CountInRank returns how many squares are occupied in the chessboard,
// within the given rank
func (cb Chessboard) CountInRank(rank byte) (ret int) {
	for _, sq := range cb[rank] {
		if sq {
			ret += 1
		}
	}
	return
}

// CountInFile returns how many squares are occupied in the chessboard,
// within the given file
func (cb Chessboard) CountInFile(file int) (ret int) {
	for _, rank := range cb {
		if file < 1 || file > len(rank) {
			return 0
		}
		if rank[file-1] {
			ret += 1
		}
	}
	return

}

// CountAll should count how many squares are present in the chessboard
func (cb Chessboard) CountAll() (ret int) {
	for _, rank := range cb {
		ret += len(rank)
	}
	return
}

// CountOccupied returns how many squares are occupied in the chessboard
func (cb Chessboard) CountOccupied() (ret int) {
	for _, rank := range cb {
		for _, sq := range rank {
			if sq {
				ret += 1
			}
		}
	}
	return
}
