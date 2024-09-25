`timescale 1ns / 1ps
module display(
    input [2:0] num1,
	 //input [7:0] num2,
    input clk,
    output [0:6] sseg,
    output reg [0:7] an,
	 output led,
	 input rst,
	 input [0:2] Amistad,
	 input [0:2] Hambre,
	 input [0:2] Dormir
    );

	 
reg [7:0]bcd=0;

BCDtoSSeg bcdtosseg(.BCD(bcd), .SSeg(sseg));

reg [26:0] cfreq=0;
wire enable;

// Divisor de frecuecia

assign enable = cfreq[16];
assign led = enable;
always @(posedge clk) begin
  if(rst==0) begin
		cfreq <= 1'b0;
	end else begin
		cfreq <=cfreq+1'b1;
	end
end

reg [2:0] count =1'b0;
always @(posedge enable) begin
		if(rst==0) begin
			count<= 1'b0;
			an<=8'b11111111; 
		end else begin 
			count<= count+1'b1;
			//an<=8'b11111110; 
			case (count) 
				3'h0: begin bcd <= num1;   an <= 8'b11111110; end 
				3'h1: begin bcd <= Amistad;   an <= 8'b11111101; end 
				3'h2: begin bcd <= Hambre;  an <= 8'b11111011; end 
				3'h3: begin bcd <= Dormir;  an <= 8'b11110111; end 
				3'h4: begin bcd <= 0; an <= 8'b11101111; end 
				3'h5: begin bcd <= 0; an <= 8'b11011111; end 
				3'h6: begin bcd <= 0; an <= 8'b10111111; end 
				3'h7: begin bcd <= 0;  an <= 8'b01111111; end 
				default: an<=8'b11111111; 
			endcase

		end
end

endmodule