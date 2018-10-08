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
  boolean pause = false;
  public void setup () {
  
  frameRate(60);
  
  newCar = new Car(500, 500);
  newObject = new ObjectGenerator(2);
  
}




public void draw(){
  background(78, 160, 0);
  newCar.draw();
  newObject.draw();
  
  if (newCar.velocity.y == 0) {
    pause = true;
  }
  else{
    pause = false;
  }
  
}



  

public void keyPressed() {
  
    if (keyPressed) {
      if (key == 'w') {
        up = true;
        println(up);
      }
      if (key == 's' ) {
        down = true;
      }
      if (key == 'a' ) {
        left = true;
      }
      if (key == 'd') {
        right = true;
      }
      if (key == 'o') {
        moreCarSpeed = true;
      }
      if (key == 'l') {
        lessCarSpeed = true;
      }
      if (key == 'p') {
        pause = true;
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
      if (key == 'o') {
        moreCarSpeed = false;
      }
      if (key == 'l') {
        lessCarSpeed = false;
      }
      if (key == 'p') {
        pause = false;
      }
   }
// class Collision{

// 	public Colision(float x1, float y1, int size1, float x2, float y2, int size2){

// 	}

// 	public calculateCollision(float x1, float y1, int size1, float x2, float y2, int size2){
// 		int maxDistance = size1 + size2;

// 	}
// }

// // boolean squareCollision(float x1, float y1, int size1, float x2, float y2, int size2)
// {
//   int maxDistance = size1 + size2;
//   if(abs(x1 - x2) > maxDistance || abs(y1 - y2) > maxDistance)
//   {
//     return false;
//   }
//   else if(dist(x1, y1, x2, y2) > maxDistance)
//   {
//     return false;
//   }
//   else
//   {
//    return true;
//   }
// }
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
    updatePositions();
    carCantEscapeTheScreen();
  } 

  public void updatePositions() {  
       // if(up == true){  
       //   carPosition.y = carPosition.y - 1; 
       // }  
       if(down == true){  
          carPosition.y = carPosition.y + 1;  
       }  
       
       
       if (moreCarSpeed) {
         velocity.y =- 1;

            if(left == true){  
              carPosition.x = carPosition.x - 2;  
             }  
             if(right == true){  
              carPosition.x = carPosition.x + 2;  
             }
       }
       if (moreCarSpeed == false) {
         velocity.y = 0;
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
class Manager{

  PVector object;
  ObjectArray[] spawnObjects;

  
  public Manager(int numberOfObjects){
    
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
// loopar igenom alla object
//när bilens velocity = 0 == pause blir true
//
}
public class ObjectArray{
  int objectVelocity = 1;
  PVector objectPosition;
  float rectWidth = 50;
  float rectHeight = 100;
  public ObjectArray(){
    objectPosition = new PVector(200, 200);

     objectPosition.x = random(0,width);
     objectPosition.y = random(0, height);
  }

  public void draw(){
if (mouseX > objectPosition.x && mouseX < objectPosition.x + rectWidth && mouseY > objectPosition.y && mouseY < objectPosition.y + rectHeight) {
    fill(255, 0, 0);
  } 
  else {
    fill(0, 255, 0);
  }
  
  rect(objectPosition.x, objectPosition.y, rectWidth, rectHeight);






    fill(120, 120, 240);

       objectPosition.y+=(objectVelocity);
       rect(objectPosition.x, objectPosition.y, 50, 50); 
       
   objectCantEscapeTheScreen();
   ifCarStopsSoDoesTheWorld();
  }

public void objectCantEscapeTheScreen(){
  
    if(objectPosition.y > height){
        objectPosition.y = -20;
        objectPosition.x = random(width);
    }}

    public void ifCarStopsSoDoesTheWorld(){
      if (pause == true) {
         objectVelocity = 0;
      }
      if (pause == false) {
        objectVelocity = 1;
      }
    }
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
// loopar igenom alla object
//när bilens velocity = 0 == pause blir true
//
  
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
