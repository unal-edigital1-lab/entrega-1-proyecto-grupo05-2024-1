module light(
    input wire clk,           // Clock input
    input wire reset,         // Reset input
    input wire sensor_input,  // Digital input from the LDR sensor
    output reg light_detected // Output indicating light detected
);

	// Simple state machine to detect light based on sensor input
	always @(posedge clk) begin
		 if (reset == 0) begin
			  light_detected <= 1'b0;
		 end else begin
			  if (sensor_input == 1'b1) begin
					light_detected <= 1'b1;  // Light detected
			  end else begin
					light_detected <= 1'b0;  // No light detected
			  end
		 end
	end

endmodule
