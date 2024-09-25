module bcd_to_7seg (
    input [4:0] bcd,
    output reg [6:0] seg
);
    always @(*) begin
        case (bcd)
            5'd0: seg = 7'b0001110; // F
            5'd1: seg = 7'b0000110; // E
            5'd2: seg = 7'b1000111; // L
            5'd3: seg = 7'b1001111; // i
            5'd4: seg = 7'b0100100; // Z
				5'd5: seg = 7'b1001000; // N //
				5'd6: seg = 7'b1000001; // U //--
				5'd7: seg = 7'b0000111; // t
				5'd8: seg = 7'b1001110; // r
				5'd9: seg = 7'b1000000; // O 
				5'd10: seg = 7'b0001001; // H 
				5'd11: seg = 7'b0001000; // A // --
				5'd12: seg = 7'b1001100; // M //
				5'd13: seg = 7'b0000011; // B //
				5'd14: seg = 7'b0100001; // D //
				5'd15: seg = 7'b0010010; // S 
            5'd16: seg = 7'b1000110; // C
            5'd17: seg = 7'b1011000; // M //
            5'd18: seg = 7'b0110000; // 3
            5'd19: seg = 7'b0011001; // 4
            5'd20: seg = 7'b0010010; // 5
            5'd21: seg = 7'b0000010; // 6
            5'd22: seg = 7'b1111000; // 7
            5'd23: seg = 7'b0000000; // 8
            5'd24: seg = 7'b0010000; // 9
				5'd25: seg = 7'b0001001; // H
				5'd26: seg = 7'b0101111; // r
				5'd27: seg = 7'b0000111; // t
				5'd28: seg = 7'b1000110; // C
				5'd29: seg = 7'b0001110; // F
				5'd30: seg = 7'b0010000; // 0
				5'd31: seg = 7'b1111111; // 
            default: seg = 7'b1111111; // Apagar display
        endcase
    end
endmodule
