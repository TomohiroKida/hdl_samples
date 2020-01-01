SIM = counter_test.v
SRC = counter1.v #counter2.v
VCD = counter.vcd
OUT = counter.out

all: $(SIM) $(SRC)
	iverilog -o $(OUT) $(SIM) $(SRC)

run: $(OUT)
	vvp $(OUT)

wave: $(VCD)
	gtkwave $(VCD)

clean:
	rm -f *.out *.vcd
