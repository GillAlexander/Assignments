import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Racing_car_game extends PApplet {

Car newCar;
ObjectGenerator newObject;

public void setup () {
  
  frameRate(60);
  
  newCar = new Car(500, 500);
  newObject = new ObjectGenerator(20);
  
  
}



public void draw(){
  background(78, 160, 0);
  newCar.draw();
  newObject.draw();
  
  newCar.keyPressed();
  newCar.keyReleased();
  
  newCar.updatePositions();
  
}


/*
int value = 0;

void draw() {
  fill(value);
  rect(25, 25, 50, 50);
}

void keyPressed() {
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
}

*/
public class ObjectGenerator{
  PVector object;
  ObjectArray[] spawnObjects;
  public ObjectGenerator(int numberOfObjects){
    
    spawnObjects = new ObjectArray[numberOfObjects];

    for (int i = 0; i < spawnObjects.length; ++i) {
      spawnObjects[i]  = new ObjectArray();
    }
  }
  
  
  public void draw(){
    
    for (int i = 0; i < spawnObjects.length; ++i) {
      spawnObjects[i].draw();
    }

  }

  
}
public class Car{
  
  int rectX;
  int rectY;
  PVector carPosition;
  PVector velocity;
  float speed = 1;
  public Car(float x, float y){
    carPosition = new PVector(x, y);
    velocity = new PVector(0, 0);
    
    
  }
  
   public Car(){
    
    
    
  }
  
  public void draw(){
    fill(224, 134, 142);
    rect(carPosition.x, carPosition.y, 25, 45);
    carPosition.add(velocity);
    
    
   // if(keyPressed){
   //   velocity.sub(0, 0);
   //}
   //else{
   //    velocity.add(0, 0);
     
   //}
    carCantEscapeTheScreen();
    keyPressed();
    keyReleased();
    updatePositions();
  } 
  
  
  boolean up = false;
  boolean down = false;
  boolean left = false;
  boolean right = false; 
  
  public void keyPressed() {
    switch(keyCode){
      
    case UP:
      up = true;
    break;
    case LEFT: 
      left = true;
    break;
    case DOWN: 
      down = true;
    break;
    case RIGHT:
      right = true;
    break;
  }
  }
  
  
  
  public void keyReleased() {
   switch(keyCode){
      
    case UP:
      up = false;
    break;
    case LEFT: 
      left = false;
    break;
    case DOWN: 
      down = false;
    break;
    case RIGHT:
      right = false;
    break;
  }
  }
  
  public void updatePositions() {  
       if(up == true){  
         velocity.y = velocity.y + 1; 
       }  
       if(down == true){  
          velocity.y = velocity.y - 1;  
       }  
       if(left == true){  
         velocity.x = velocity.x + 1;  
       }  
       if(right == true){  
          velocity.x = velocity.x - 1;  
       }
}  
  
  

  
  //void carMove(float x, float y){
  // carPosition.x =  carPosition.x + y;
  // carPosition.y = carPosition.y + y;
    
  //}
  
  public void carCantEscapeTheScreen(){
  if(carPosition.x > width || carPosition.x < 0){
        velocity.x = -velocity.x;
    }
    if(carPosition.y > height || carPosition.y < 0){
        velocity.y = -velocity.y;
    }}
}


  //switch(keyCode){
  //  case UP:
  //  velocity.sub(0, 1);
    
  //  case LEFT: 
  //  velocity.sub(1, 0);
    
  //  case DOWN: 
  //  velocity.add(0, 1);
    
  //  case RIGHT:
  //  velocity.add(1, 0);
  //}
  
public class ObjectArray{

	PVector objectPosition;
	public ObjectArray(){
		objectPosition = new PVector(200, 200);

	 objectPosition.x = random(0,width);
     objectPosition.y = random(0, height);
	}

	public void draw(){

		fill(120, 120, 240);
   		rect(objectPosition.x, objectPosition.y, 50, 50); 
   		objectPosition.y+=random(1.0f, 2.0f);
   		
   objectCantEscapeTheScreen();
	}

public void objectCantEscapeTheScreen(){
  
    if(objectPosition.y > height){
        objectPosition.y = -20;
        objectPosition.x = random(width);
    }}
}
  public void settings() {  size(1000, 800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Racing_car_game" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
