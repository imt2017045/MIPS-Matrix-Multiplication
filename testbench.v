module alu_tb;
reg [31:0]instr;
reg clk = 1;
wire [3:0]alucon;
wire [31:0]result;
wire zero;
wire [31:0]so1;
wire [31:0]so2;
alu uut(
      .instr(instr),
      .clk(clk),
      .alucon(alucon),
      .result(result),
      .zero(zero),
      .so1(so1),
      .so2(so2)
);
initial begin
      $dumpfile("alu.vcd");
      $dumpvars(0,alu_tb);
end
always #15 clk = ~clk;
initial #3780 $stop();
initial begin
      clk=1;
      instr=32'b001000_10111_10011_00000_00000_000000;#30;//addi
      instr=32'b100011_10111_10000_00000_00000_000000;#30;//li
      instr=32'b100011_10111_10001_00000_00000_001001;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//multiply S0*S1 = S2
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add S3+S2 = S3
      instr=32'b100011_10111_10000_00000_00000_000001;#30;//li
      instr=32'b100011_10111_10001_00000_00000_001100;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//mulltiply
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add
      instr=32'b100011_10111_10000_00000_00000_000010;#30;//li
      instr=32'b100011_10111_10001_00000_00000_001111;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//multiply
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add
      instr=32'b101011_10111_10011_00000_00000_010010;#30;//store
      //index is 0,1
      instr=32'b001000_10111_10011_00000_00000_000000;#30;//addi
      instr=32'b100011_10111_10000_00000_00000_000000;#30;//li
      instr=32'b100011_10111_10001_00000_00000_001010;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//multiply S0*S1 = S2
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add S3+S2 = S3
      instr=32'b100011_10111_10000_00000_00000_000001;#30;//li
      instr=32'b100011_10111_10001_00000_00000_001101;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//mulltiply
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add
      instr=32'b100011_10111_10000_00000_00000_000010;#30;//li
      instr=32'b100011_10111_10001_00000_00000_010000;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//multiply
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add
      instr=32'b101011_10111_10011_00000_00000_010011;#30;//store
      //index is 0,2
      instr=32'b001000_10111_10011_00000_00000_000000;#30;//addi
      instr=32'b100011_10111_10000_00000_00000_000000;#30;//li
      instr=32'b100011_10111_10001_00000_00000_001011;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//multiply S0*S1 = S2
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add S3+S2 = S3
      instr=32'b100011_10111_10000_00000_00000_000001;#30;//li
      instr=32'b100011_10111_10001_00000_00000_001110;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//mulltiply
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add
      instr=32'b100011_10111_10000_00000_00000_000010;#30;//li
      instr=32'b100011_10111_10001_00000_00000_010001;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//multiply
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add
      instr=32'b101011_10111_10011_00000_00000_010100;#30;//store
      //index is 1,0
      instr=32'b001000_10111_10011_00000_00000_000000;#30;//addi
      instr=32'b100011_10111_10000_00000_00000_000011;#30;//li
      instr=32'b100011_10111_10001_00000_00000_001001;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//multiply S0*S1 = S2
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add S3+S2 = S3
      instr=32'b100011_10111_10000_00000_00000_000100;#30;//li
      instr=32'b100011_10111_10001_00000_00000_001100;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//mulltiply
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add
      instr=32'b100011_10111_10000_00000_00000_000101;#30;//li
      instr=32'b100011_10111_10001_00000_00000_001111;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//multiply
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add
      instr=32'b101011_10111_10011_00000_00000_010101;#30;//store
      //index is 1,1
      instr=32'b001000_10111_10011_00000_00000_000000;#30;//addi
      instr=32'b100011_10111_10000_00000_00000_000011;#30;//li
      instr=32'b100011_10111_10001_00000_00000_001010;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//multiply S0*S1 = S2
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add S3+S2 = S3
      instr=32'b100011_10111_10000_00000_00000_000100;#30;//li
      instr=32'b100011_10111_10001_00000_00000_001101;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//mulltiply
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add
      instr=32'b100011_10111_10000_00000_00000_000101;#30;//li
      instr=32'b100011_10111_10001_00000_00000_010000;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//multiply
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add
      instr=32'b101011_10111_10011_00000_00000_010110;#30;//store
      //index is 1,2
      instr=32'b001000_10111_10011_00000_00000_000000;#30;//addi
      instr=32'b100011_10111_10000_00000_00000_000011;#30;//li
      instr=32'b100011_10111_10001_00000_00000_001011;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//multiply S0*S1 = S2
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add S3+S2 = S3
      instr=32'b100011_10111_10000_00000_00000_000100;#30;//li
      instr=32'b100011_10111_10001_00000_00000_001110;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//mulltiply
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add
      instr=32'b100011_10111_10000_00000_00000_000101;#30;//li
      instr=32'b100011_10111_10001_00000_00000_010001;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//multiply
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add
      instr=32'b101011_10111_10011_00000_00000_010111;#30;//store
      //index is 2,0
      instr=32'b001000_10111_10011_00000_00000_000000;#30;//addi
      instr=32'b100011_10111_10000_00000_00000_000110;#30;//li
      instr=32'b100011_10111_10001_00000_00000_001001;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//multiply S0*S1 = S2
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add S3+S2 = S3
      instr=32'b100011_10111_10000_00000_00000_000111;#30;//li
      instr=32'b100011_10111_10001_00000_00000_001100;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//mulltiply
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add
      instr=32'b100011_10111_10000_00000_00000_001000;#30;//li
      instr=32'b100011_10111_10001_00000_00000_001111;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//multiply
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add
      instr=32'b101011_10111_10011_00000_00000_011000;#30;//store
      //index is 2,1
      instr=32'b001000_10111_10011_00000_00000_000000;#30;//addi
      instr=32'b100011_10111_10000_00000_00000_000110;#30;//li
      instr=32'b100011_10111_10001_00000_00000_001010;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//multiply S0*S1 = S2
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add S3+S2 = S3
      instr=32'b100011_10111_10000_00000_00000_000111;#30;//li
      instr=32'b100011_10111_10001_00000_00000_001101;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//mulltiply
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add
      instr=32'b100011_10111_10000_00000_00000_001000;#30;//li
      instr=32'b100011_10111_10001_00000_00000_010000;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//multiply
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add
      instr=32'b101011_10111_10011_00000_00000_011001;#30;//store
      //index is 2,2
      instr=32'b001000_10111_10011_00000_00000_000000;#30;//li
      instr=32'b100011_10111_10000_00000_00000_000110;#30;//li
      instr=32'b100011_10111_10001_00000_00000_001011;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//multiply S0*S1 = S2
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add S3+S2 = S3
      instr=32'b100011_10111_10000_00000_00000_000111;#30;//li
      instr=32'b100011_10111_10001_00000_00000_001110;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//mulltiply
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add
      instr=32'b100011_10111_10000_00000_00000_001000;#30;//li
      instr=32'b100011_10111_10001_00000_00000_010001;#30;//li
      instr=32'b000000_10000_10001_10010_00000_011000;#30;//multiply
      instr=32'b000000_10010_10011_10011_00000_100000;#30;//add
      instr=32'b101011_10111_10011_00000_00000_011010;#30;//store

end
endmodule
