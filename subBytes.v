module subBytes(in,out);
input [127:0] in;
output [127:0] out;

genvar i;
generate 
for(i=0;i<128;i=i+8) begin :substitute_Bytes 
	sbox subByte(in[i +:8],out[i +:8]);
	end
endgenerate


endmodule 