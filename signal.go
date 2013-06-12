package dspguide

import "errors"
import "math/rand"

func init() {
	var _ error = NoMoreSamples
	var _ Signal = &SliceSignal{}
	var _ Signal = &RandSignal{}
}

var NoMoreSamples = errors.New("No more samples")

type Signal interface {
	Next() (int64, error)
	HasNext() bool
}

type SliceSignal struct {
	S []int64
	i int
}

func (s *SliceSignal) Reset() {
	s.i = 0
}

func (s *SliceSignal) Next() (out int64, err error) {
	if !s.HasNext() {
		err = NoMoreSamples
		return
	}

	out = s.S[s.i]
	s.i++
	return
}

func (s *SliceSignal) HasNext() bool {
	return s.i < len(s.S)
}

type RandSignal struct {
	Min, Max int64
	Num      int
	i        int
	r        *rand.Rand
}

func NewRandSignal(seed *int64) (r *RandSignal) {
	r = new(RandSignal)
	if seed == nil {
		seed = new(int64)
		*seed = -1
	}
	r.r = rand.New(rand.NewSource(*seed))
	return
}

func (r RandSignal) HasNext() bool {
	if r.Num > 0 {
		return r.i < r.Num
	}
	return true
}

func (r *RandSignal) Next() (out int64, err error) {
	if !r.HasNext() {
		return 0, NoMoreSamples
	}
	if r.Max-r.Min <= (1<<63)-1 {
		z := r.r.Int63n(r.Max - r.Min)
		out = z + r.Min
	} else {
		out = int64(r.r.Uint32()<<32 | r.r.Uint32())
		for out < r.Min || out > r.Max {
			out = int64(r.r.Uint32()<<32 | r.r.Uint32())
		}
	}
	r.i++
	return
}
