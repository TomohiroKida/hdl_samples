TOP = DFF
SIM = DFF_TEST.v
SRC = $(TOP).v 
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
