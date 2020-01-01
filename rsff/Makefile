SIM = rsff_test.v
SRC = rsff_inst.v rsff.v
VCD = rsff_inst.vcd
OUT = rsff_inst.out

all: $(SIM) $(SRC)
	iverilog -o $(OUT) $(SIM) $(SRC)

run: $(OUT)
	vvp $(OUT)

wave: $(VCD)
	gtkwave $(VCD)

clean:
	rm -f *.out *.vcd
