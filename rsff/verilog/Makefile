DESIGN		= rsff
SOURCE_FILE	= $(DESIGN).v $(DESIGN)_inst.v # add rtl files
SIM_TOP		= rsff_test
SIM_FILE	= $(SIM_TOP).v
SIM_WORK 	= work
SIM_DO   	= "add wave -r /$(SIM_TOP)/i0/*; run -all; quit"

.PHONY: sim view

all: sim 

$(SIM_WORK):
	vlib work

sim: $(SIM_WORK)
	vlog $(SIM_FILE) $(SOURCE_FILE)
# -c   : command line mode
# -l   : specify sim log file
# -wlf : specify wlf file
# -do  : execute command on startup
	vsim -c $(SIM_TOP) -l $(SIM_TOP).log -wlf $(SIM_TOP).wlf -do $(SIM_DO)

view: 
	vsim $(SIM_TOP).wlf
	
clean:
	rm -rf *.log *.wlf $(SIM_WORK) transcript

#cover:
#	covered score -t $(SIM_TOP) -v $(SRC) -vcd $(VCD)
#	covered report -d v -m ltcfram -o coverage.rpt cov.cdd 
