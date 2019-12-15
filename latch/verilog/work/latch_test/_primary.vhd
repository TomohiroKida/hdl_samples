library verilog;
use verilog.vl_types.all;
entity latch_test is
    generic(
        CYCLE           : integer := 100
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CYCLE : constant is 1;
end latch_test;
