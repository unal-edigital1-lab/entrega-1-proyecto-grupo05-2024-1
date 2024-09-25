module sensorsignal(
	//Sensor de Luz
	input clk,
	input reset,
	input inluz,
	output ouluz,
	//Sensor Humedad
	input inhum,
	output ouhum,
	output reg bano,
	//Sensor de Ultrasonido
	output trig,
	input echo,
	output reg Care,
	output reg distancia,
	//Sensor de Temperatura
	output reg frio,
	output reg [7:0] aju_t,
	output [7:0] aju_h,
	output reg T,
	inout dht1,
	//Botondecomer
	input meal,
	output reg eat
);

parameter COUNT = 1000000000;
reg [$clog2(COUNT)-1:0]countrel;
reg [$clog2(COUNT)-1:0]count;
reg [$clog2(COUNT)-1:0]countbano;
reg [$clog2(COUNT)-1:0]countfrio;
reg comer;
reg aux;
wire led;
reg [7:0] Tem;


light luz(
	.clk(clk),
	.reset(reset),
	.sensor_input(inluz),
	.light_detected(ouluz)
);


sonido ultra(
	.clock(clk),
	.trig(trig),
	.echo(echo),
	.led(led)
);

dht dht11(
	.clk(clk),
	.rst(reset),
	.dht11(dht1),
	.aju_t(Tem),
	.aju_h(aju_h)
);

Humedad humm(
	.clk(clk),
	.reset(reset),
	.inhum(inhum),
	.ouhum(ouhum)
);

//Salida Binaria temperatura
always @(posedge clk) begin
	aju_t = Tem;
	if (Tem < 12) begin
		countfrio = countfrio + 1;
		if (countfrio > 500000000) begin
			frio = 1;
			countfrio = 0;
		end
	end
	else begin
		countfrio = 0;
		frio = 0;
	end
end


//Salida binaria ultrasonido	
always @(posedge clk) begin
	if(led == 0) begin
		count = count + 1;
		distancia = 0;
		if (count > 150000000) begin
			Care = 1;
			count = 0;
		end
	end else begin
		count = 0;
		Care = 0;
		distancia = 1;
	end
end


always @(posedge clk) begin
	countrel = countrel + 1;
	if (countrel > 100000000) begin
		eat = meal;
		countrel = 0;
	end else
		eat = 1;
end	
	
always @(posedge clk) begin
	if (ouhum == 0) begin
		countbano = countbano + 1;
		if (countbano > 250000000) begin
			bano = 1;
			countbano = 0;
		end
	end else begin
		bano = 0;
		countbano = 0;
end
end
	
endmodule
	