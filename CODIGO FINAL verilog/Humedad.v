module Humedad(
    input wire clk,           // Clock input
    input wire reset,         // Reset input
    input wire inhum,  // Digital input from the LDR sensor
    output reg ouhum // Output indicating light detected
);

	// Simple state machine to detect light based on sensor input
	always @(posedge clk) begin
		 if (reset == 0) begin
			  ouhum <= 1'b0;
		 end else begin
			  if (inhum == 1'b1) begin
					ouhum <= 1'b1;  // Light detected
			  end else begin
					ouhum <= 1'b0;  // No light detected
			  end
		 end
	end

endmodule
