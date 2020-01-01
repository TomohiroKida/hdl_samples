SIM = e_dff_test.v
SRC = e_dff.v 
VCD = e_dff.vcd
OUT = e_dff.out

all: $(SIM) $(SRC)
	iverilog -o $(OUT) $(SIM) $(SRC)

run: $(OUT)
	vvp $(OUT)

wave: $(VCD)
	gtkwave $(VCD)

clean:
	rm -f *.out *.vcd
