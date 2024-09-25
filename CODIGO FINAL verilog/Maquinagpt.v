module Maquinagpt (
    input  clk,       // Reloj
    input  reset,     // Reset       
    input  MJ,        // Entrada MJ (1 bit)
    //output  [2:0] estado_actual, // Salida del estado actual
	 //Sensor Luz
	 input sensor,
	 //Sensor Humedad
	 input inhum,
	 //Sensor Ultrasonido
	 input echo,
	 output trig,
	 //Sensor de Temperatura
	 inout dht11,
	 //Boton de comer
	 input meal,
	 //Display 7 segmentos
	 output [6:0] sseg,
	 output reg [7:0] an,
	 output ledd,
	 input rstd,
	 //Display 20x4
	 output rs,
	 output ena,
	 output rw,
	 output [7:0] dat,
	 //Modo test
	 input test,
	 input intest
);

sensorsignal senal(
	//Sensor de Luz
		.clk(clk),
		.reset(reset),
		.inluz(sensor),
		.ouluz(L),
	//Sensor Humedad
		.inhum(inhum),
		.bano(bano),	
	//Sensor de Ultrasonido
		.trig(trig),
		.echo(echo),
		.Care(care),
		.distancia(distancia),
	//Sensor de Temperatura
		.frio(T),
		.dht1(dht11),
		.aju_t(tempe),
		.aju_h(humed),
	//Botondecomer
		.meal(meal),
		.eat(eat)
);

/*	
display prueba(
	.num1(salestado),
	.clk(clk),
	.sseg(sseg),
	.an(an),
	.led(ledd),
	.rst(rstd),
	.Amistad(A),
	.Hambre(H),
	.Dormir(D)
);
*/

 
 display_controller display_ctrl (
	  .clk(clk),
	  .estado(salestado),
	  .an(an),
	  .seg(sseg)
 );
 
 
lcd_controller disgato(
	.clk(clk),
	.rs(rs),
	.ena(ena),
	.rw(rw),
	.dat(dat),
	.reset(reset),
	.luz(L),
	.hum(inhum),
	.dis(distancia),
	.aju_h(humed),
	.aju_t(tempe),
	.estado(salestado),
	.Amistad(A),
	.Hambre(H),
	.Dormir(D)
);

	
    // Definición de los estados
    parameter FELIZ      = 3'b000,
    NEUTRO     = 3'b001,
    HAMBRIENTO = 3'b010,
    DESCANSO   = 3'b011,
    MUERTO     = 3'b100,
    AMISTAD    = 3'b101,
	 TEST       = 3'b110;
	 
	 parameter HAMBRE = 500000000;
	 parameter DORMIR = 250000000;
	 parameter AMISTO = 500000000;
	 parameter SUMAA = 250000000;
	 parameter SUMAD = 250000000;
	 parameter SUMAF = 500000000;
	
	
	 parameter COUNT = 60000000000;
	 reg [2:0] estado_proximo;
	 reg [2:0] estado;
	 reg [2:0] A = 5;   
    reg [2:0] H = 5;   
    reg [2:0] D = 5;   
	 reg [$clog2(COUNT)-1:0] counter = 1'b0;
	 reg [$clog2(COUNT)-1:0] countA = 1'b0;
	 reg [$clog2(COUNT)-1:0] countH = 1'b0;
	 reg [$clog2(COUNT)-1:0] countD = 1'b0;
	 reg [$clog2(COUNT)-1:0] counttest = 1'b0;
	 reg aux;
	 reg T; //Sensor temperatura
	 reg eat; //Boton comer
	 reg bano; //Sensor humedad
	 reg care; //Sensor ultrasonido
	 reg L;
	 //7 segmentos
	 reg [0:2] salestado;
	 wire [7:0] tempe;
	 wire [7:0] humed;
	 reg auxfeliz;
	 wire distancia;
	 
	 //Contadores
always @(posedge clk) begin
	counter = counter + 'd1;
	if (counter > 200000000) begin
		auxfeliz = 1;
		counter = 0;
	end else if (reset == 0 || estado != FELIZ) begin
		counter = 0;
	end else 
		auxfeliz = 0;
end
    // Lógica combinacional para determinar el próximo estado
    always @(*) begin
        case (estado)
            FELIZ: begin
					if (auxfeliz == 1)
						estado_proximo = NEUTRO;
					else if (intest == 1) 
						estado_proximo = TEST;
					else 
						estado_proximo = FELIZ;
            end
            NEUTRO: begin
					if (A == 0 || H == 0 || D == 0)
                    estado_proximo = MUERTO;
					else if (L == 1)
						  estado_proximo = DESCANSO;
					else if (MJ == 1)
						  estado_proximo = AMISTAD;
               else if (H < 4)
						  estado_proximo = HAMBRIENTO;
					else if (intest == 1) 
						estado_proximo = TEST;
					else 
						  estado_proximo = NEUTRO;
            end
            HAMBRIENTO: begin
                if (H == 5)
						  estado_proximo = FELIZ;
					 else if (H == 0 || A == 0 || D == 0)
						  estado_proximo = MUERTO;
					 else if (intest == 1) 
						estado_proximo = TEST;
					 else
						  estado_proximo = HAMBRIENTO;
				end
            DESCANSO: begin
                if (L == 0) 
						  estado_proximo = NEUTRO;
					 else 
						  estado_proximo = DESCANSO;
            end
            MUERTO: begin
               estado_proximo = MUERTO; // Estado final
            end
            AMISTAD: begin
					if ((A == 0 || H == 0 || D == 0) && MJ == 1) begin
						estado_proximo = MUERTO;
					end else if (MJ == 0)
						estado_proximo = NEUTRO;
					else 
						estado_proximo = AMISTAD;
            end
				TEST: begin
					if (intest == 0) 
						estado_proximo = FELIZ;
					else
						estado_proximo = TEST;
				end
            default: begin
                estado_proximo = FELIZ; // Estado por defecto
				end
        endcase
	end	

	always @(posedge clk) begin
		case(estado_proximo)
			FELIZ: begin
				salestado = 3'h1;
			end
			NEUTRO: begin
				//PANTALLA
				salestado = 3'h2;
				//ESTADISTICAS
				countH = countH + 1;
				countD = countD + 1;
				countA = countA + 1;
				if (countH > HAMBRE) begin
					H = H - 1;
					countH = 0;
				end
				if (countD > DORMIR) begin
					D = D - 1;
					countD = 0;
				end
				if (countA > AMISTO) begin
					A = A - 1;
					countA = 0;
				end
			end
			HAMBRIENTO: begin
				//PANTALLA
				salestado = 3'h3;
				//ALIMENTAR
				if (eat == 0 && H < 5) begin
					H = H + 1;
				end
				//ESTADISTICAS
				countH = countH + 1;
				countD = countD + 1;
				countA = countA + 1;
				if (countH > HAMBRE) begin
					H = H - 1;
					countH = 0;
				end
				if (countD > DORMIR) begin
					D = D - 1;
					countD = 0;
				end
				if (countA > AMISTO) begin
					A = A - 1;
					countA = 0;
				end
			end
			DESCANSO: begin
				//PANTALLA
				salestado = 3'h4;
				//ESTADISTICAS
				countH = 0;
				countD = countD + 1;
				countA = countA + 1;
				if (countD > SUMAD && D < 5) begin
					D = D + 1;
					countD = 0;
				end
				//TEMPERATURA
				if (T == 1 && countA > SUMAF) begin 
					A = A - 1;
					countA = 0;
				end
			end
			MUERTO: begin
				salestado = 3'h5;
			end
			AMISTAD: begin
				//PANTALLA
				salestado = 3'h6;
				//ESTADISTICAS
				countH = countH + 1;
				countD = countD + 1;
				countA = countA + 1;
				/*if(care == 1) begin
					A = A + 1;
				end else*/
				if (countH > HAMBRE) begin
					H = H - 1;
					countH = 0;
				end
				else if (countD > DORMIR) begin
					D = D - 1;
					countD = 0;
				end
				else if (care == 1 && A < 5 && countA > SUMAA) begin
					A = A + 1;
					countA = 0;
				end
				//JUGAR
				else if (bano == 1 && A < 5 && countA > SUMAA) begin 
					A = A + 1;
					countA = 0;
				end	
				else if (countA > AMISTO) begin
					A = A - 1;
					countA = 0;
				end
			end
			TEST: begin
				countA = countA + 1;
				if (test == 0 && salestado < 6) begin
					counttest = counttest + 1;
					A = 3;
					H = 3;
					D = 3;
					if (counttest > 50000000) begin
						salestado = salestado + 1;
						counttest = 0;
					end
				end
				else if (care == 1 && A < 5 && countA > SUMAA) begin
					A = A + 1;
					countA = 0;
				end
				//JUGAR
				else if (bano == 1 && A < 5 && countA > SUMAA) begin 
					A = A + 1;
					countA = 0;
				end 
				else 
					counttest = 0;
			end
		endcase
		if (reset == 0) begin
            estado <= FELIZ;// Estado inicial
				A = 5;
				H = 5;
				D = 5;
				countA = 0;
				countH = 0;
				countD = 0;
        end else begin
            estado <= estado_proximo;
        end
	 end
	 
    // Asignación del estado actual a la salida
    assign estado_actual = estado;
	
endmodule