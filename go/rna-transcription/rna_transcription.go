package strand

func Version() string {
	return "1"
}
func ToRNA(dna string) string {
	var rna string

	if dna == "" {
		rna = ""
	} else {
		for _, value := range dna {
			switch value {
			case 'G':
				rna += "C"
			case 'C':
				rna += "G"
			case 'T':
				rna += "A"
			case 'A':
				rna += "U"
			default:
				rna += string(value)
			}
		}
		
	}
	return rna
}
