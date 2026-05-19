// CUSTOM7

{ // block
uint32 rs2_val = RS2;
uint32 rs1_val = RS1;
uint32 outp0 = (uint32)((((uint32)((uint32)((((int32)(rs2_val) * (int32)(rs1_val))))) >> 8ULL)));
WRITE_RD(outp0);
} // block

