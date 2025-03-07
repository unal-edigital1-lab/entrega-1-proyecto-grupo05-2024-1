`timescale 1ns / 1ps

// #(parameter COUNT_MAX = 800000)(
module estado(
	input clk,
	input [7:0] est,
	output reg [63:0] char
);
    always @(*) begin
	     case(est)
				 0:
				 	 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00001; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b00001; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00001; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00001; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00010; // Quinta fila: encender todos
						  char[47:40] <= 8'b00110; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00100; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b01100; // Octava fila: ningún bit encendido
					 end
				 1:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b10000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b01000; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00011; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00000; // Quinta fila: encender todos
						  char[47:40] <= 8'b00000; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00110; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00110; // Octava fila: ningún bit encendido
					 end
				 2:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00001; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b00010; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b11000; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00000; // Quinta fila: encender todos
						  char[47:40] <= 8'b00000; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b01100; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b01100; // Octava fila: ningún bit encendido
					 end
				 3:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b10000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b10000; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b10000; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b10000; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b01000; // Quinta fila: encender todos
						  char[47:40] <= 8'b01100; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00100; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00110; // Octava fila: ningún bit encendido
					 end
				 4:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b01000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b01000; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00110; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00010; // Quinta fila: encender todos
						  char[47:40] <= 8'b00001; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00000; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00000; // Octava fila: ningún bit encendido
					 end
				 5:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b00011; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00001; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00100; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00011; // Quinta fila: encender todos
						  char[47:40] <= 8'b00000; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b10000; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b01111; // Octava fila: ningún bit encendido
					 end
				 6:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b11000; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b10000; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00100; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b11000; // Quinta fila: encender todos
						  char[47:40] <= 8'b00000; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00001; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b11110; // Octava fila: ningún bit encendido
					 end
				 7:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00010; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b00010; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b01100; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b01000; // Quinta fila: encender todos
						  char[47:40] <= 8'b10000; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00000; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00000; // Octava fila: ningún bit encendido
					 end
				 8:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00001; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b00001; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00001; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00001; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00010; // Quinta fila: encender todos
						  char[47:40] <= 8'b00110; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00100; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b01100; // Octava fila: ningún bit encendido
					 end
				 9:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b10000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b01000; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00011; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00000; // Quinta fila: encender todos
						  char[47:40] <= 8'b00000; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00110; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00110; // Octava fila: ningún bit encendido
					 end
				 10:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00001; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b00010; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b11000; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00000; // Quinta fila: encender todos
						  char[47:40] <= 8'b00000; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b01100; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b01100; // Octava fila: ningún bit encendido
					 end
				 11:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b10000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b10000; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b10000; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b10000; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b01000; // Quinta fila: encender todos
						  char[47:40] <= 8'b01100; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00100; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00110; // Octava fila: ningún bit encendido
					 end
				 12:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b01000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b01000; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00110; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00010; // Quinta fila: encender todos
						  char[47:40] <= 8'b00001; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00000; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00000; // Octava fila: ningún bit encendido
					 end
				 13:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b00011; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00001; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00000; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00011; // Quinta fila: encender todos
						  char[47:40] <= 8'b00000; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b10000; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b01111; // Octava fila: ningún bit encendido
					 end
				 14:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b11000; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b10000; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00000; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b11000; // Quinta fila: encender todos
						  char[47:40] <= 8'b00000; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00001; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b11110; // Octava fila: ningún bit encendido
					 end
				 15:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00010; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b00010; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b01100; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b01000; // Quinta fila: encender todos
						  char[47:40] <= 8'b10000; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00000; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00000; // Octava fila: ningún bit encendido
					 end
			    16:
				 	 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00001; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b00001; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00001; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00001; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00010; // Quinta fila: encender todos
						  char[47:40] <= 8'b00110; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00100; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b01100; // Octava fila: ningún bit encendido
					 end
				 17:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b10000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b01000; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b10011; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b01000; // Quinta fila: encender todos
						  char[47:40] <= 8'b01100; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b01110; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00001; // Octava fila: ningún bit encendido
					 end
				 18:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00001; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b00010; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b11001; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00010; // Quinta fila: encender todos
						  char[47:40] <= 8'b00110; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b01110; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b10000; // Octava fila: ningún bit encendido
					 end
				 19:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b10000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b10000; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b10000; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b10000; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b01000; // Quinta fila: encender todos
						  char[47:40] <= 8'b01100; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00100; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00110; // Octava fila: ningún bit encendido
					 end
				 20:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b01000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b01000; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00110; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00010; // Quinta fila: encender todos
						  char[47:40] <= 8'b00001; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00000; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00000; // Octava fila: ningún bit encendido
					 end
				 21:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b00011; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00001; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00000; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00011; // Quinta fila: encender todos
						  char[47:40] <= 8'b00011; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b10000; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b01111; // Octava fila: ningún bit encendido
					 end
				 22:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b11000; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b10000; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00000; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b11000; // Quinta fila: encender todos
						  char[47:40] <= 8'b11000; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00001; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b11110; // Octava fila: ningún bit encendido
					 end
				 23:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00010; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b00010; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b01100; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b01000; // Quinta fila: encender todos
						  char[47:40] <= 8'b10000; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00000; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00000; // Octava fila: ningún bit encendido
					 end
				 24:
				 	 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00001; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b00001; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00001; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00001; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00010; // Quinta fila: encender todos
						  char[47:40] <= 8'b00110; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00100; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b01100; // Octava fila: ningún bit encendido
					 end
				 25:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b10000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b01000; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00011; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00000; // Quinta fila: encender todos
						  char[47:40] <= 8'b00000; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00110; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00000; // Octava fila: ningún bit encendido
					 end
				 26:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00001; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b00010; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b11000; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00000; // Quinta fila: encender todos
						  char[47:40] <= 8'b00000; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b01100; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00000; // Octava fila: ningún bit encendido
					 end
				 27:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b10000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b10000; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b10000; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b10000; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b01000; // Quinta fila: encender todos
						  char[47:40] <= 8'b01100; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00100; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00110; // Octava fila: ningún bit encendido
					 end
				 28:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b01000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b01000; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00110; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00010; // Quinta fila: encender todos
						  char[47:40] <= 8'b00001; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00000; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00000; // Octava fila: ningún bit encendido
					 end
				 29:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b00011; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00001; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00000; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00001; // Quinta fila: encender todos
						  char[47:40] <= 8'b00000; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b10000; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b01111; // Octava fila: ningún bit encendido
					 end
				 30:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b11000; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b10000; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00000; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b10000; // Quinta fila: encender todos
						  char[47:40] <= 8'b00000; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00001; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b11110; // Octava fila: ningún bit encendido
					 end
				 31:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00010; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b00010; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b01100; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b01000; // Quinta fila: encender todos
						  char[47:40] <= 8'b10000; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00000; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00000; // Octava fila: ningún bit encendido
					 end
			    32:
				 	 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00001; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b00001; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00001; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00001; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00010; // Quinta fila: encender todos
						  char[47:40] <= 8'b00110; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00100; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b01100; // Octava fila: ningún bit encendido
					 end
				 33:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b10000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b01000; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00011; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00000; // Quinta fila: encender todos
						  char[47:40] <= 8'b01010; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00100; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b01010; // Octava fila: ningún bit encendido
					 end
				 34:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00001; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b00010; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b11000; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00000; // Quinta fila: encender todos
						  char[47:40] <= 8'b01010; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00100; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b01010; // Octava fila: ningún bit encendido
					 end
				 35:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b10000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b10000; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b10000; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b10000; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b01000; // Quinta fila: encender todos
						  char[47:40] <= 8'b01100; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00100; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00110; // Octava fila: ningún bit encendido
					 end
				 36:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b01000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b01000; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00110; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00010; // Quinta fila: encender todos
						  char[47:40] <= 8'b00001; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00000; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00000; // Octava fila: ningún bit encendido
					 end
				 37:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b00011; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00001; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00000; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00001; // Quinta fila: encender todos
						  char[47:40] <= 8'b00010; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b10000; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b01111; // Octava fila: ningún bit encendido
					 end
				 38:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b11000; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b10000; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00000; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b10000; // Quinta fila: encender todos
						  char[47:40] <= 8'b01000; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00001; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b11110; // Octava fila: ningún bit encendido
					 end
				 39:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00010; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b00010; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b01100; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b01000; // Quinta fila: encender todos
						  char[47:40] <= 8'b10000; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00000; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00000; // Octava fila: ningún bit encendido
					 end
				 40:
				 	 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00001; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b00001; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00001; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00001; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00010; // Quinta fila: encender todos
						  char[47:40] <= 8'b00110; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00100; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b01100; // Octava fila: ningún bit encendido
					 end
				 41:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b10000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b01000; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00011; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00000; // Quinta fila: encender todos
						  char[47:40] <= 8'b00000; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00110; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00110; // Octava fila: ningún bit encendido
					 end
				 42:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00001; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b00010; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b11000; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00000; // Quinta fila: encender todos
						  char[47:40] <= 8'b00000; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b01100; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b01100; // Octava fila: ningún bit encendido
					 end
				 43:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b10000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b10000; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b10000; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b10000; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b01000; // Quinta fila: encender todos
						  char[47:40] <= 8'b01100; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00100; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00110; // Octava fila: ningún bit encendido
					 end
				 44:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b01000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b01000; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00110; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b00010; // Quinta fila: encender todos
						  char[47:40] <= 8'b00001; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00000; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00000; // Octava fila: ningún bit encendido
					 end
				 45:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b01011; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b11001; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00100; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b01101; // Quinta fila: encender todos
						  char[47:40] <= 8'b00001; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b10000; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b01111; // Octava fila: ningún bit encendido
					 end
				 46:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00000; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b11010; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b10011; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b00100; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b10110; // Quinta fila: encender todos
						  char[47:40] <= 8'b10000; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00001; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b11110; // Octava fila: ningún bit encendido
					 end
				 47:
					 begin
						  //Caracteres personalizados
						  // Definir el patrón (cada valor es una fila)
						  char[7:0] <= 8'b00010; // Primer fila: ningún bit encendido
						  char[15:8] <= 8'b00010; // Segundo fila: encender el tercer bit
						  char[23:16] <= 8'b00100; // Tercer fila: encender el segundo y cuarto bit
						  char[31:24] <= 8'b01100; // Cuarta fila: encender los extremos
						  char[39:32] <= 8'b01000; // Quinta fila: encender todos
						  char[47:40] <= 8'b10000; // Sexta fila: encender los extremos
						  char[55:48] <= 8'b00000; // Séptima fila: encender los extremos
						  char[63:56] <= 8'b00000; // Octava fila: ningún bit encendido
					 end
		  endcase
	 end
endmodule