SIM = bcdcnt_test.v
SRC = bcdcnt.v #counter2.v
VCD = bcdcnt.vcd
OUT = bcdcnt.out

all: $(SIM) $(SRC)
	iverilog -o $(OUT) $(SIM) $(SRC)

run: $(OUT)
	vvp $(OUT)

wave: $(VCD)
	gtkwave $(VCD)

clean:
	rm -f *.out *.vcd
