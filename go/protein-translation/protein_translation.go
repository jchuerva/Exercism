package protein

import "errors"

var translations = map[string]string{
	"AUG": "Methionine",
	"UUU": "Phenylalanine",
	"UUC": "Phenylalanine",
	"UUA": "Leucine",
	"UUG": "Leucine",
	"UCU": "Serine",
	"UCC": "Serine",
	"UCA": "Serine",
	"UCG": "Serine",
	"UAU": "Tyrosine",
	"UAC": "Tyrosine",
	"UGU": "Cysteine",
	"UGC": "Cysteine",
	"UGG": "Tryptophan",
	"UAA": "STOP",
	"UAG": "STOP",
	"UGA": "STOP",
}

var (
	ErrStop        error = errors.New("STOP")
	ErrInvalidBase error = errors.New("ErrInvalidBase")
)
// var ErrInvalidBase = errors.New("ErrInvalidBase")
// var ErrStop = errors.New("ErrStop")


func FromCodon(codon string) (string, error) {
	value, ok := translations[codon]

	if !ok {
		return "", ErrInvalidBase
	}
	if value == "STOP" {
		return "", ErrStop
	}
	return value, nil
}

func FromRNA(input string) ([]string, error) {
	var result []string
	for i := 0; i <= len(input)-3; i += 3 {
		aminoacid, ok := FromCodon(input[i : i+3])
		if ok == ErrInvalidBase {
			return result, ErrInvalidBase
		} else if ok == ErrStop {
			return result, nil // break
		}
		result = append(result, aminoacid)
	}
	return result, nil
}
