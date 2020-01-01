SIM = dff_test.v
SRC = dff.v 
VCD = dff.vcd
OUT = dff.out

all: $(SIM) $(SRC)
	iverilog -o $(OUT) $(SIM) $(SRC)

run: $(OUT)
	vvp $(OUT)

wave: $(VCD)
	gtkwave $(VCD)

clean:
	rm -f *.out *.vcd
