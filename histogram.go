package dspguide

// import "fmt"

type HistogramOptions struct {
}

// Histogram, given an input slice, will generate a histogram of the values of that slice, such that out[i-offset]
// is the number of times the value i appears in the signal. If there are negative values in the signal, the returned
// offset will be the lowest of those. Otherwise offset is 0.
func Histogram(signal Signal, options HistogramOptions) (out []int64, offset int64, err error) {
	for signal.HasNext() {
		s, e := signal.Next()
		if e == NoMoreSamples {
			break
		} else if e != nil {
			err = e
			return
		}
		if s < offset {
			oldoffset := offset
			offset = s
			oldout := out
			out = make([]int64, len(out)+int(oldoffset-s))
			copy(out[oldoffset-offset:], oldout)
		}
		for int(s-offset) >= len(out) {
			out = append(out, 0)
		}
		out[s-offset]++
	}
	return
}

func HistoMean(signal Signal, options HistogramOptions) (mean int64, err error) {
	h, offset, e := Histogram(signal, options)
	if e != nil {
		return 0, e
	}
	var scount int64
	var summation int64
	for i, r := range h {
		summation += (int64(i) + offset) * r
		scount += r
	}

}
