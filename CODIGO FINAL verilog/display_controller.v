module display_controller (
    input clk,
	 input [2:0] estado,				//Estado actual
    output reg [7:0] an, // Anodos de los 8 displays
    output reg [6:0] seg // Segments a-g
);
    
	 reg [19:0] value1;
	 reg [19:0] value2;
	 
	 //reg [3:0] digit;
    reg [2:0] sel;
	 reg [31:0] timer;

    wire [6:0] seg0, seg1, seg2, seg3, seg4, seg5, seg6, seg7;

    // Convertir cada dígito a segmentos
    bcd_to_7seg bcd0 (.bcd(value1[4:0]), .seg(seg0));
    bcd_to_7seg bcd1 (.bcd(value1[9:5]), .seg(seg1));
    bcd_to_7seg bcd2 (.bcd(value1[14:10]), .seg(seg2));
    bcd_to_7seg bcd3 (.bcd(value1[19:15]), .seg(seg3));
    bcd_to_7seg bcd4 (.bcd(value2[4:0]), .seg(seg4));
    bcd_to_7seg bcd5 (.bcd(value2[9:5]), .seg(seg5));
    bcd_to_7seg bcd6 (.bcd(value2[14:10]), .seg(seg6));
    bcd_to_7seg bcd7 (.bcd(value2[19:15]), .seg(seg7));
	 
	 initial begin
		timer = 0; 
	 end

    // Multiplexor
    always @(posedge clk) begin
		  if (timer < 1200) begin
				timer <= timer + 1;
		  end else begin
				timer <= 0;
				sel <= sel + 1;
		  end
    end

    always @(*) begin
        case (sel)
            3'd0: begin an = 8'b01111111; seg = seg0; end
            3'd1: begin an = 8'b10111111; seg = seg1; end
            3'd2: begin an = 8'b11011111; seg = seg2; end
            3'd3: begin an = 8'b11101111; seg = seg3; end
            3'd4: begin an = 8'b11110111; seg = seg4; end
            3'd5: begin an = 8'b11111011; seg = seg5; end
            3'd6: begin an = 8'b11111101; seg = seg6; end
            3'd7: begin an = 8'b11111110; seg = seg7; end
            default: begin an = 8'b11111111; seg = 7'b1111111; end
        endcase
        case (estado)
            3'd1: begin //FELIZ
					value1[4:0] <= 5'd0;
					value1[9:5] <=  5'd1;
					value1[14:10] <= 5'd2;
					value1[19:15] <= 5'd3;
					value2[4:0] <= 5'd4;
					value2[9:5] <= 5'd31;
					value2[14:10] <= 5'd31;
					value2[19:15] <= 5'd31;
				end
				/*
            3'd1: begin //FELIZ
					value1[4:0] <= 5'd0;
					value1[9:5] <=  5'd1;
					value1[14:10] <= 5'd2;
					value1[19:15] <= 5'd3;
					value2[4:0] <= 5'd4;
					value2[9:5] <= 5'd31;
					value2[14:10] <= 5'd31;
					value2[19:15] <= 5'd31;
				end
            3'd2: begin //FELIZ
					value1[4:0] <= 5'd0;
					value1[9:5] <=  5'd1;
					value1[14:10] <= 5'd2;
					value1[19:15] <= 5'd3;
					value2[4:0] <= 5'd4;
					value2[9:5] <= 5'd31;
					value2[14:10] <= 5'd31;
					value2[19:15] <= 5'd31;
				end
            3'd3: begin //FELIZ
					value1[4:0] <= 5'd0;
					value1[9:5] <=  5'd1;
					value1[14:10] <= 5'd2;
					value1[19:15] <= 5'd3;
					value2[4:0] <= 5'd4;
					value2[9:5] <= 5'd31;
					value2[14:10] <= 5'd31;
					value2[19:15] <= 5'd31;
				end
            3'd4: begin //FELIZ
					value1[4:0] <= 5'd0;
					value1[9:5] <=  5'd1;
					value1[14:10] <= 5'd2;
					value1[19:15] <= 5'd3;
					value2[4:0] <= 5'd4;
					value2[9:5] <= 5'd31;
					value2[14:10] <= 5'd31;
					value2[19:15] <= 5'd31;
				end
            3'd5: begin //FELIZ
					value1[4:0] <= 5'd0;
					value1[9:5] <=  5'd1;
					value1[14:10] <= 5'd2;
					value1[19:15] <= 5'd3;
					value2[4:0] <= 5'd4;
					value2[9:5] <= 5'd31;
					value2[14:10] <= 5'd31;
					value2[19:15] <= 5'd31;
				end
            3'd6: begin //FELIZ
					value1[4:0] <= 5'd0;
					value1[9:5] <=  5'd1;
					value1[14:10] <= 5'd2;
					value1[19:15] <= 5'd3;
					value2[4:0] <= 5'd4;
					value2[9:5] <= 5'd31;
					value2[14:10] <= 5'd31;
					value2[19:15] <= 5'd31;
				end
				*/
            3'd2: begin //NEUTRO
					value1[4:0] <= 5'd5;
					value1[9:5] <=  5'd1;
					value1[14:10] <= 5'd6;
					value1[19:15] <= 5'd7;
					value2[4:0] <= 5'd8;
					value2[9:5] <= 5'd9;
					value2[14:10] <= 5'd31;
					value2[19:15] <= 5'd31;
				end
            3'd3: begin //HAMBRE
					value1[4:0] <= 5'd10;
					value1[9:5] <=  5'd11;
					value1[14:10] <= 5'd12;
					value1[19:15] <= 5'd17;
					value2[4:0] <= 5'd13;
					value2[9:5] <= 5'd8;
					value2[14:10] <= 5'd1;
					value2[19:15] <= 5'd31;
				end
            3'd4: begin //DESCANSO
					value1[4:0] <= 5'd14;
					value1[9:5] <=  5'd1;
					value1[14:10] <= 5'd15;
					value1[19:15] <= 5'd16;
					value2[4:0] <= 5'd11;
					value2[9:5] <= 5'd5;
					value2[14:10] <= 5'd15;
					value2[19:15] <= 5'd9;
				end
            3'd5: begin //MUERTO
					value1[4:0] <= 5'd12;
					value1[9:5] <=  5'd17;
					value1[14:10] <= 5'd6;
					value1[19:15] <= 5'd1;
					value2[4:0] <= 5'd8;
					value2[9:5] <= 5'd7;
					value2[14:10] <= 5'd9;
					value2[19:15] <= 5'd31;
				end
            3'd6: begin //AMISTAD
					value1[4:0] <= 5'd11;
					value1[9:5] <=  5'd12;
					value1[14:10] <= 5'd17;
					value1[19:15] <= 5'd3;
					value2[4:0] <= 5'd15;
					value2[9:5] <= 5'd7;
					value2[14:10] <= 5'd11;
					value2[19:15] <= 5'd14;
				end
            3'd2: begin //TEST
					value1[4:0] <= 5'd7;
					value1[9:5] <=  5'd1;
					value1[14:10] <= 5'd15;
					value1[19:15] <= 5'd7;
					value2[4:0] <= 5'd31;
					value2[9:5] <= 5'd31;
					value2[14:10] <= 5'd31;
					value2[19:15] <= 5'd31;
				end
            default: begin
					value1[4:0] <= 5'd0;
					value1[9:5] <=  5'd1;
					value1[14:10] <= 5'd2;
					value1[19:15] <= 5'd3;
					value2[4:0] <= 5'd4;
					value2[9:5] <= 5'd31;
					value2[14:10] <= 5'd31;
					value2[19:15] <= 5'd31;
				end
        endcase
    end
endmodule
