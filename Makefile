SIM=iverilog
VIEW=gtkwave
SRC=src/advanced_clock_network.v
TB=tb/testbenches.v
VCDDIR=waveforms

all: ring mux interp gating sync fifo

ring:
	$(SIM) -o ring.out $(SRC) $(TB) -s tb_ring_oscillator
	./ring.out

mux:
	$(SIM) -o mux.out $(SRC) $(TB) -s tb_glitch_free_mux
	./mux.out

interp:
	$(SIM) -o interp.out $(SRC) $(TB) -s tb_phase_interpolator
	./interp.out

gating:
	$(SIM) -o gating.out $(SRC) $(TB) -s tb_clock_gating
	./gating.out

sync:
	$(SIM) -o sync.out $(SRC) $(TB) -s tb_cdc_synchronizer
	./sync.out

fifo:
	$(SIM) -o fifo.out $(SRC) $(TB) -s tb_cdc_fifo
	./fifo.out

clean:
	rm -f *.out $(VCDDIR)/*.vcd
