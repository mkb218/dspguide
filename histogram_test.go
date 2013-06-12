package dspguide

import "testing"

func TestHistogram(t *testing.T) {
	var signal = new(SliceSignal)
	signal.S = []int64{1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6}
	hist, offset, err := Histogram(signal, HistogramOptions{})
	t.Log(hist, offset)
	if err != nil {
		t.Logf("got an error! %v", err)
		t.Fail()
	}
	if len(hist) != 7 {
		t.Logf("wrong value for len(hist): %d", len(hist))
		t.Fail()
	}
	if offset != 0 {
		t.Logf("wrong offset: %d", offset)
		t.Fail()
	}
	var sum int64
	for i, h := range hist {
		sum += h
		if i != 0 && h != 2 {
			t.Logf("wrong value for %d: %d", i, h)
			t.Fail()
		}
	}
	if sum != int64(len(signal.S)) {
		t.Logf("Bad number of points in histogram %d should be %d\n", sum, len(signal.S))
		t.Fail()
	}
}

func TestHistogramNegativeOffset(t *testing.T) {
	var signal = new(SliceSignal)
	signal.S = []int64{-1, 2, 3, 4, 5, 6, -1, 2, 3, 4, 5, 6}
	hist, offset, err := Histogram(signal, HistogramOptions{})
	t.Log(hist, offset)
	if err != nil {
		t.Logf("got an error! %v", err)
		t.Fail()
	}
	if len(hist) != 8 {
		t.Logf("wrong value for len(hist): %d", len(hist))
		t.Fail()
	}
	if offset != -1 {
		t.Logf("wrong offset: %d", offset)
		t.Fail()
	}
	for i, h := range hist {
		if (i < 1 || i > 2) && h != 2 {
			t.Logf("wrong value for %d: %d", int64(i)-offset, h)
			t.Fail()
		}
	}
}

func BenchmarkHistogram(t *testing.B) {
	t.StopTimer()
	signal := NewRandSignal(nil)
	signal.Num = t.N
	signal.Max = 32768
	signal.Min = -32767
	t.StartTimer()
	histo, offset, err := Histogram(signal, HistogramOptions{})
	t.Logf("%d %d %v\n", len(histo), offset, err)
	if err != nil {
		t.Fail()
	}
}
