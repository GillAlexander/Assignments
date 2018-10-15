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

public class assignment5MovementVelocity extends PApplet {

PVector position = new PVector(); 
PVector velocity = new PVector();
float acceleration;
float tpf;
float frameTime;
float time;
public void setup(){
 
 stroke(100, 200, 100);
 strokeWeight(50);
 frameRate(10);
 
 position.x = 50;
 position.y = 50;
 velocity.x = 5; 
 velocity.y = 50;
 tpf = 1f / 60f;
 acceleration = 1000;
}

  long currentTime;
public void draw() {
  background(255);
  currentTime  = millis();
  frameTime = currentTime - time;
frameTime = frameTime * 0.001f;
println(frameTime);

  point(position.x, position.y);
  position.x = position.x + (velocity.x * frameTime);
  position.y = position.y + (velocity.y * frameTime);
  
  velocity.y = velocity.y + (acceleration * frameTime);
  velocity.x = velocity.x + (acceleration * frameTime);
  
changeDirection();
  
  time = currentTime;

}





public void changeDirection(){

 if((position.x > width) || (position.x < 0)){
    velocity.x = -velocity.x;
   
   if (position.x > width){
      position.x = width -2;
   }
}

  if((position.y > height) || (position.y < 0)){
      velocity.y = -velocity.y;
      velocity.y = velocity.y * 0.9f;
      
    if (position.y > height){
      position.y = height -2;
    }  
}
  
}

/* Create the bouncing ball example.
Make it bounce of the edges of the screen. 
Use tpf to control movement every update 
Change the program to make the ball come out 
from the left of the screen when it exits on the right.
Use a vector class to handle position and velocity.  */
  public void settings() {  size(500, 400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "assignment5MovementVelocity" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
