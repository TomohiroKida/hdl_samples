TOP = RSFF_INST
SIM = RSFF_TEST.v
SRC = $(TOP).v RSFF.v
VCD = $(TOP).vcd
OUT = $(TOP).out

all: $(SIM) $(SRC)
	iverilog -o $(OUT) $(SIM) $(SRC)

run: $(OUT)
	vvp $(OUT)

wave: $(VCD)
	gtkwave $(VCD)

clean:
	rm -f $(OUT) $(VCD)
