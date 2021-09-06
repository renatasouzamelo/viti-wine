<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cód. Arduino</title>
</head>
<body>
    
</body>
</html>

<script>

const int lm35 = A0; //A0: variável que define porta de entrada, para receber dados do sensor;
float temperatura; // variável que armazena valores recebidos e calculados do sensor.
void setup()} // / Função executada apenas uma vez a cada início da execução(entry point).
{Serial.begin(9600); // Parâmetro usado para inicializar porta serial.

void loop(){ //Função que repete sequência lógica até que a execução seja interrompida.
int leitura = analogRead(lm35); // variável que receber dados diretos do sensor a armazena para cálculo.
temperatura = (5.0 /1023) * leitura * 100; //atribuição de valor convertido em  bits para cálculo da temperatura.
Serial.print("Temperatura: "); // Comando para exibir informação em tela(print = imprimir).
Serial.println(temperatura); //Exibe valor de variável “temperatura” já calculado e convertido.
 delay(2000); // Adiciona um pequeno atraso(atraso) medido em segundos (2000 = 2 segundos).
}
</script>