SIM = .v
SRC = .v #.v
VCD = .vcd
OUT = .out

all: $(SIM) $(SRC)
	iverilog -o $(OUT) $(SIM) $(SRC)

run: $(OUT)
	vvp $(OUT)

wave: $(VCD)
	gtkwave $(VCD)

clean:
	rm -f *.out *.vcd
