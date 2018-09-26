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

public class racingGame extends PApplet {

Car newCar;
ObjectGenerator newObject;
  boolean up = false;
  boolean down = false;
  boolean left = false;
  boolean right = false; 
  boolean moreCarSpeed = false;
  boolean lessCarSpeed = false;
public void setup () {
  
  frameRate(60);
  
  newCar = new Car(500, 500);
  newObject = new ObjectGenerator(40);
  
}



public void draw(){
  background(78, 160, 0);
  newCar.draw();
  newObject.draw();
  
  
  
  newCar.updatePositions();
}

  public void keyPressed() {
  
    if (keyPressed) {
      if (key == 'w') {
        up = true;
        println(up);
      }
      if (key == 'a' ) {
        left = true;
      }
      if (key == 's' ) {
        down = true;
      }
      if (key == 'd') {
        right = true;
      }
      if (key == 'o') {
        car.velocity.x = 10;
      }
      if (key == 'o') {
        
      }
   }
}

public void keyReleased() {
      if (key == 'w') {
        up = false;
        println(up);
      }
      if (key == 'a' ) {
        left = false;
      }
      if (key == 's' ) {
        down = false;
      }
      if (key == 'd') {
        right = false;
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
  
  
  public void draw(){
    fill(224, 134, 142);
    rect(carPosition.x, carPosition.y, 25, 45);
    carPosition.add(velocity);
    
    carCantEscapeTheScreen();
  } 

  public void updatePositions() {  
       if(up == true){  
         carPosition.y = carPosition.y - 10; 
       }  
       if(down == true){  
          carPosition.y = carPosition.y + 10;  
       }  
       if(left == true){  
         carPosition.x = carPosition.x - 10;  
       }  
       if(right == true){  
          carPosition.x = carPosition.x + 10;  
       }
}  
  
  
  public void carCantEscapeTheScreen(){
  if(carPosition.x > 765){
        carPosition.x = 765;
    }
    if (carPosition.x < 5) {
      carPosition.x = 5;
    }

    if(carPosition.y > 965){
        carPosition.y = 965;
    }
    if(carPosition.y < 5) {
      carPosition.y = 5;
    }

  }
}
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
       objectPosition.y+=(2);
       
   objectCantEscapeTheScreen();
  }

public void objectCantEscapeTheScreen(){
  
    if(objectPosition.y > height){
        objectPosition.y = -20;
        objectPosition.x = random(width);
    }}
}
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
  public void settings() {  size(800, 1000); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "racingGame" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
