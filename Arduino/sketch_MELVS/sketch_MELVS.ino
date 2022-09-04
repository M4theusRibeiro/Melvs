#include "DHT.h"
#define dht_type DHT11 //define qual o tipo de sensor DHTxx que se está utilizando
/**
* Configurações iniciais sobre os sensores
* DHT11, LM35, LDR5 e TCRT5000
*/
int dht_pin = A2; //SENSOR DHT11 - SENSOR AZUL
DHT dht_1 = DHT(dht_pin, dht_type); //pode-se configurar diversos sensores DHTxx
int lm35_pin = A0, leitura_lm35 = 0;//SENSOR LM35 - SENSOR PRETO
float temperatura;
int ldr_pin = A4, leitura_ldr = 0;//SENSOR LDR - SENSOR DE LUMINOSIDADE
int switch_pin = 4;//SENSOR TCRT5000 - SENSOR 
void setup()
{
Serial.begin(9600);
dht_1.begin();
pinMode(switch_pin, INPUT);
}
void loop()
{
/**
* Bloco do DHT11
*/
float umidade = dht_1.readHumidity();
float temperatura = dht_1.readTemperature();
if (isnan(temperatura) or isnan(umidade))
{
Serial.println("Erro ao ler o DHT");
}
else
{
Serial.print(umidade);
Serial.print(";");
Serial.print(temperatura);
Serial.print(";");
}
/**
 * * Bloco do LM35
*/
leitura_lm35 = analogRead(lm35_pin);
temperatura = leitura_lm35 * (5.0/1023) * 100;
Serial.print(temperatura);
Serial.print(";");
/**
* Bloco do LDR5
*/
leitura_ldr = analogRead(ldr_pin);
Serial.print(leitura_ldr);
Serial.print(";");
/**
* Bloco do TCRT5000
*/
if(digitalRead(switch_pin) == LOW){
Serial.println(1);
}
else {
Serial.println(0);
}
delay(2000);
}
