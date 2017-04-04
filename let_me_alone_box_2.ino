//Codigo de Lukilukeskywalker

#include <SoftRcPulseOut.h> 
 
SoftRcPulseOut myservo;
#define SERVO_PIN         0          //ESTO ES PB0, MOSI, donde conecto el servo en mi placa
#define REFRESH_PERIOD_MS 18         //TIEMPO DE PULSO. FUNCIONA MEJOR QUE CON 20MS
#define NOW               1          //TIEMPO UP, PULSO
#define MAX               145        //MAX ANGULO DE SERVO... esto es variable entre las diferentes servos
#define MIN               70         //MIN ANGULO SERVO ""
#define AnguloAPAGADO     60         //angulo para final de carrera
int interruptor = 0;
int detector = 3; //patilla a la que esta conectada el interruptor principal
int Altavoz = 4; //patilla a la que esta conectado el buzzer
int pos = 0;    // variable to store the servo position 
int Contador = 0;
int randomizador = 0;
int Contacelerador = 0;

void setup() {
  // put your setup code here, to run once:
   myservo.attach(SERVO_PIN);  // attaches the servo on pin defined by SERVO_PIN to the servo object 
   pinMode(detector, INPUT);         //detector de interruptor
   pinMode(Altavoz, OUTPUT);        //ALtavoz
   digitalWrite(Altavoz, HIGH);   //ponemos la salida a 1, para que no consuma inecesariamente
 // tone(Altavoz, 233);
  delay(1000);  
}

void loop() {
  // put your main code here, to run repeatedly:
randomizador = randomizador + 1;   //como no tengo forma de tener una entrada random, usare lo que si que se que es random... el tiempo que yo active el interruptor
if (randomizador == 7) {
  randomizador = 0;
}
interruptor = digitalRead(detector);
if (interruptor == LOW) {
Contador = Contador + 1;
if (Contador <5)  {   //Somnoliento
  Servosubirlento();
  Servobajarlento();
}
if (Contador >= 5){                //Servorapido
  if (Contador <10){
  ServosubirMedio();
  Servobajarlento();
}
}
if (Contador >=10)  {   //Servo ULTRA
  if (Contador <15){
    ServosubirRapido();
    ServobajarRapido();
    Asegurarbajada();
  }
}
if (Contador>=15){
  if (randomizador==0){
    Respuesta1();
  }
  if (randomizador==1){
  Respuesta2();
  }
  if (randomizador==2){
  Respuesta3();
  }
  if (randomizador==3){
    ServosubirRapido();
  }
  if (randomizador==4){
    ServosubirMedio();
  }
  if (randomizador==5){
    Servosubirlento();
  }
  if (randomizador==6){
    Respuesta4();
  }
  ServobajarRapido();
  Asegurarbajada();
}
}
}
void INTactivadoBajada(){
  //este es el movimiento que se realizara si descubre que el interruptor a sido activado mientras que bajaba
  interruptor = digitalRead(detector);
  if (interruptor == LOW) {
    for(pos = pos; pos < MAX; pos += 3)  // goes from 0 degrees to 180 degrees 
    {                                  // in steps of 1 degree 
       myservo.write(pos);              // tell servo to go to position in variable 'pos' 
       delay(REFRESH_PERIOD_MS);        // waits 20ms for refresh period 
       SoftRcPulseOut::refresh(NOW);    // generates the servo pulse Now
    }
    interruptor = digitalRead(detector);
    if (interruptor ==HIGH){
    Contacelerador = Contacelerador + 1;      //esta parte esta para ver si se quiere pasar a la zona "random".... creo que fallara, y necesirtare dividirlo en 2 partes separadas
    if (Contacelerador ==5){                  //.... o no.. porque se me acaba de ocurrir una idea...
      Contador = 15;                          //Para tu info... los comentarios de arriba son de cuando esta parte estaba en otra zona XD...... pero nunca sabras donde estaba xD
    } 
    }
  }
}
void  Servosubirlento(){
     for(pos = MIN; pos < MAX; pos += 1)  // goes from 0 degrees to 180 degrees 
  {                                  // in steps of 1 degree 
    myservo.write(pos);              // tell servo to go to position in variable 'pos' 
    delay(REFRESH_PERIOD_MS);        // waits 20ms for refresh period 
    SoftRcPulseOut::refresh(NOW);    // generates the servo pulse Now
  } 
}
void Servobajarlento(){
   for(pos = MAX; pos>=MIN; pos-=1)     // goes from 180 degrees to 0 degrees 
  {      
    myservo.write(pos);              // tell servo to go to position in variable 'pos' 
    delay(REFRESH_PERIOD_MS);        // waits 20ms for for refresh period 
    SoftRcPulseOut::refresh(NOW);    // generates the servo pulse Now
    INTactivadoBajada();
  } 
}
void ServosubirMedio(){
      for(pos = MIN; pos < MAX; pos += 4)  // goes from 0 degrees to 180 degrees 
  {                                  // in steps of 1 degree 
    myservo.write(pos);              // tell servo to go to position in variable 'pos' 
    delay(REFRESH_PERIOD_MS);        // waits 20ms for refresh period 
    SoftRcPulseOut::refresh(NOW);    // generates the servo pulse Now
  } 
}
void ServosubirRapido(){
     for(pos = MIN; pos < MAX; pos += 8)  // goes from 0 degrees to 180 degrees 
  {                                  // in steps of 1 degree 
    myservo.write(pos);              // tell servo to go to position in variable 'pos' 
    delay(REFRESH_PERIOD_MS);        // waits 20ms for refresh period 
    SoftRcPulseOut::refresh(NOW);    // generates the servo pulse Now
  } 
}
void ServobajarRapido(){
    for(pos = MAX; pos>=MIN; pos-=8)     // goes from 180 degrees to 0 degrees 
  {                                
    myservo.write(pos);              // tell servo to go to position in variable 'pos' 
    delay(REFRESH_PERIOD_MS);        // waits 20ms for for refresh period 
    SoftRcPulseOut::refresh(NOW);    // generates the servo pulse Now
    INTactivadoBajada();
  }
}
void Asegurarbajada(){
  myservo.write(MIN);
  delay(REFRESH_PERIOD_MS);
  SoftRcPulseOut::refresh(NOW);
  myservo.write(MIN);
  delay(REFRESH_PERIOD_MS);
  SoftRcPulseOut::refresh(NOW);
}
void Respuesta1(){
       for(pos = MIN; pos < 100; pos += 1)  // goes from 0 degrees to 180 degrees 
  {                                  // in steps of 1 degree 
    myservo.write(pos);              // tell servo to go to position in variable 'pos' 
    delay(REFRESH_PERIOD_MS);        // waits 20ms for refresh period 
    SoftRcPulseOut::refresh(NOW);    // generates the servo pulse Now
  }
  delay (1000);
         for(pos = MIN; pos < MAX; pos += 1)  // goes from 0 degrees to 180 degrees 
  {                                  // in steps of 1 degree 
    myservo.write(pos);              // tell servo to go to position in variable 'pos' 
    delay(REFRESH_PERIOD_MS);        // waits 20ms for refresh period 
    SoftRcPulseOut::refresh(NOW);    // generates the servo pulse Now
  }
}
void Respuesta2(){
       for(pos = MIN; pos < 100; pos += 1)  // goes from 0 degrees to 180 degrees 
  {                                  // in steps of 1 degree 
    myservo.write(pos);              // tell servo to go to position in variable 'pos' 
    delay(REFRESH_PERIOD_MS);        // waits 20ms for refresh period 
    SoftRcPulseOut::refresh(NOW);    // generates the servo pulse Now
  }
  delay (1000);
         for(pos = MIN; pos < 135; pos += 6)  // goes from 0 degrees to 180 degrees 
  {                                  // in steps of 1 degree 
    myservo.write(pos);              // tell servo to go to position in variable 'pos' 
    delay(REFRESH_PERIOD_MS);        // waits 20ms for refresh period 
    SoftRcPulseOut::refresh(NOW);    // generates the servo pulse Now
  }
  delay (500);
           for(pos = MIN; pos < MAX; pos += 1)  // goes from 0 degrees to 180 degrees 
  {                                  // in steps of 1 degree 
    myservo.write(pos);              // tell servo to go to position in variable 'pos' 
    delay(REFRESH_PERIOD_MS);        // waits 20ms for refresh period 
    SoftRcPulseOut::refresh(NOW);    // generates the servo pulse Now
  }
}
void Respuesta3(){
       for(pos = MIN; pos < 120; pos += 1)  // goes from 0 degrees to 180 degrees 
  {                                  // in steps of 1 degree 
    myservo.write(pos);              // tell servo to go to position in variable 'pos' 
    delay(REFRESH_PERIOD_MS);        // waits 20ms for refresh period 
    SoftRcPulseOut::refresh(NOW);    // generates the servo pulse Now
  }
  delay (1000);
  myservo.write(MIN);
  delay(REFRESH_PERIOD_MS);
  SoftRcPulseOut::refresh(NOW);
  myservo.write(MIN);
  delay(REFRESH_PERIOD_MS);
  SoftRcPulseOut::refresh(NOW);
  delay (1000);
    myservo.write(MAX);
  delay(REFRESH_PERIOD_MS);
  SoftRcPulseOut::refresh(NOW);
  myservo.write(MAX);
  delay(REFRESH_PERIOD_MS);
  SoftRcPulseOut::refresh(NOW);
 }
 void Respuesta4(){
    for(pos = MIN; pos < 100; pos += 1)  // goes from 0 degrees to 180 degrees 
  {                                  // in steps of 1 degree 
    myservo.write(pos);              // tell servo to go to position in variable 'pos' 
    delay(REFRESH_PERIOD_MS);        // waits 20ms for refresh period 
    SoftRcPulseOut::refresh(NOW);    // generates the servo pulse Now
  }
  tone (Altavoz, 1200);
  delay (3000);
  noTone (Altavoz);
  ServosubirRapido();
 }
void Apagar(){
  myservo.write(0);
  delay(REFRESH_PERIOD_MS);
  SoftRcPulseOut::refresh(NOW);
  myservo.write(0);
  delay(REFRESH_PERIOD_MS);
  SoftRcPulseOut::refresh(NOW);
}



