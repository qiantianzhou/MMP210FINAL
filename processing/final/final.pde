import controlP5.*;
import processing.serial.*;

//Serial port;

ControlP5 cp5;

Serial myPort;

void setup(){
  
  size(800,600);
  
  println(Serial.list());
  String portName = Serial.list()[1];
  myPort = new Serial(this, portName, 9600);
  
  
  //portName = Serial.list()[2];
  //printArray(Serial.list());
  //port = new Serial(this,"0",9600);     // 111111111
  
  
  cp5 = new ControlP5(this);
  //font = createFont("calibri light", 20);
  
  cp5.addButton("livingroomon") /// green
     .setPosition(100,50)
     .setSize(100,70)
     //.setFont(font)
     ;
  cp5.addButton("livingroomoff")
     .setPosition(100,150)
     .setSize(100,70)
     //.setFont(font)
     ;
   
   cp5.addButton("bedroomon") /// yellow
     .setPosition(250,50)
     .setSize(100,70)
     //.setFont(font)
     ; 
   cp5.addButton("bedroomoff")
     .setPosition(250,150)
     .setSize(100,70)
     //.setFont(font)
     ; 
  
  cp5.addButton("kitchenon")   /// blue
     .setPosition(400,50)
     .setSize(100,70)
     //.setFont(font)
     ;
  cp5.addButton("kitchenoff")
     .setPosition(400,150)
     .setSize(100,70)
     //.setFont(font)
     ;
   
     
     
  cp5.addButton("alloff")
     .setPosition(550,50)
     .setSize(100,70)
     //.setFont(font)
     ;
     
  cp5.addButton("allon")
     .setPosition(550,150)
     .setSize(100,70)
     //.setFont(font)
     ;
  cp5.addButton("dooroff")
     .setPosition(100,300)
     .setSize(100,70)
     ;
     

}

void draw(){
  
  background(80, 116, 235);
  fill(0,255,0);
  //textFont(font);
  text("Smart Home", 100, 30);

}

void livingroomon(){
  myPort.write('r');
}
void kitchenon(){
  myPort.write('b');
}
void bedroomon(){
  myPort.write('y');
}
void alloff(){
  myPort.write('f');
}
void livingroomoff(){
  myPort.write('c');
}
void kitchenoff(){
  myPort.write('v');
}
void bedroomoff(){
  myPort.write('z');
}
void allon(){
  myPort.write('O');
}
void dooroff(){
  myPort.write('p');
}
