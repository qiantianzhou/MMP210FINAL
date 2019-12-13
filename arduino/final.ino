const byte ledPin = 9;
const byte interruptPin = 2;
volatile byte state = LOW;
int val = 0;
boolean ignore = false;



void setup() {
  pinMode(10,OUTPUT);     // BLUE LED
  pinMode(11,OUTPUT);     // Green LED;
  pinMode(12,OUTPUT);     // yellow LED
  pinMode(ledPin, OUTPUT);   // led output pin
  pinMode(interruptPin, INPUT_PULLUP);  // hall sensor input pin
  attachInterrupt(digitalPinToInterrupt(interruptPin), test, CHANGE);
  Serial.begin(9600);
}

void loop() {
  Serial.println(digitalRead(2));
  if (digitalRead(2) == HIGH && ignore){
    digitalWrite(ledPin, LOW);
  }
  if (digitalRead(2) == LOW){
    digitalWrite(ledPin, LOW);
  }

  if (digitalRead(2) == HIGH && !ignore){
    digitalWrite(ledPin, HIGH);
  }
//  digitalWrite(ledPin, state);
//  Serial.println(val/2);

  if(Serial.available()){
    char val = Serial.read();
    if(val == 'p'){
      ignore = !ignore;
//      state = !state;
//      digitalWrite(ledPin,LOW); // turn off the red led
    } 
    if(val == 'r'){
      digitalWrite(11,HIGH); // TURN ON green LED
    }
    if(val == 'b'){
      
      digitalWrite(10,HIGH); //turn on blue led
    }
    if(val == 'y'){
      
      digitalWrite(12,HIGH); //turn on yellow led
    }

    
    if(val == 'c'){

      digitalWrite(11,LOW); // turn off green led
    }

    if(val == 'v'){

      digitalWrite(10,LOW); // turn off blue led
    }
    if(val == 'z'){

      digitalWrite(12,LOW); // turn off yellow led
    }

    if(val == 'f'){
      
      digitalWrite(10,LOW); 
      digitalWrite(11,LOW); 
      digitalWrite(12,LOW);  // turn off all the led

    }

    if(val == 'O'){
      
      digitalWrite(10,HIGH); 
      digitalWrite(11,HIGH); 
      digitalWrite(12,HIGH); // turn on all the led

    }
  }
  

}
void test() {
  
//  state = !state;
//  val++;
}
