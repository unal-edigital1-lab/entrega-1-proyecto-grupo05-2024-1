module sonido(
    input clock,          // Señal de reloj de entrada
    output trig,          // Señal de disparo de salida para el sensor ultrasónico
    input echo,           // Señal de eco de entrada del sensor ultrasónico
    //reg [32:0] distance,  // Registro de 33 bits que contiene la distancia medida
    output reg led        // Salida para controlar el LED
);

reg [32:0] us_counter = 0;   // Contador para medir la duración del eco en microsegundos
reg _trig = 1'b0;
reg [32:0] distance;            // Registro interno para la señal de disparo

reg [9:0] one_us_cnt = 0;    // Contador para generar un pulso de 1 microsegundo
wire one_us = (one_us_cnt == 0);  // Cable que indica cuando el contador de 1 microsegundo llega a cero

reg [9:0] ten_us_cnt = 0;    // Contador para generar un pulso de 10 microsegundos
wire ten_us = (ten_us_cnt == 0);  // Cable que indica cuando el contador de 10 microsegundos llega a cero

reg [21:0] forty_ms_cnt = 0; // Contador para generar un pulso de 40 milisegundos
wire forty_ms = (forty_ms_cnt == 0);  // Cable que indica cuando el contador de 40 milisegundos llega a cero

assign trig = _trig;  // Asignar la señal interna _trig a la salida trig

// Bloque always que se ejecuta en cada flanco positivo del reloj
always @(posedge clock) begin
    // Actualización de contadores
    one_us_cnt <= (one_us ? 50 : one_us_cnt) - 1;  // Recargar a 50 para 1 microsegundo (asumiendo reloj de 50 MHz)
    ten_us_cnt <= (ten_us ? 500 : ten_us_cnt) - 1; // Recargar a 500 para 10 microsegundos
    forty_ms_cnt <= (forty_ms ? 2000000 : forty_ms_cnt) - 1; // Recargar a 2,000,000 para 40 milisegundos
    
    // Desactivar el trigger después de 10 microsegundos
    if (ten_us && _trig)
        _trig <= 1'b0;
    
    // Incrementar el contador de microsegundos si el eco está alto
    if (one_us) begin    
        if (echo)
            us_counter <= us_counter + 1;  // Incrementar el contador de microsegundos
        else if (us_counter) begin
            // Calcular la distancia cuando el eco se pone bajo
            distance <= us_counter / 58;  // Convertir el tiempo a distancia en cm
            us_counter <= 0;  // Reiniciar el contador de microsegundos
            // Encender o apagar el LED basado en la distancia medida
            if (distance <= 10)
                led <= 1'b0;  // Encender el LED si la distancia es menor o igual a 10 cm
            else
                led <= 1'b1;  // Apagar el LED si la distancia es mayor a 10 cm
        end
    end
    
    // Activar el trigger cada 40 milisegundos
    if (forty_ms)
        _trig <= 1'b1;
end

endmodule

