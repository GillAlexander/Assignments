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

public class classBall extends PApplet {

Ball newBall;
public void setup(){
    
    stroke(100, 200, 100);
    strokeWeight(50);
    frameRate(60);
    
    newBall = new Ball(20);
    // newBall2 = new Ball(420, 80, 500, 500);
    // newBall3 = new Ball(280, 700, 500, 500);
    
  }
  float time;
  float frameTime;
  long currentTime;
  public void draw(){
    background(255);
    currentTime = millis();
    frameTime = (currentTime - time) * 0.001f;

    
    // newBall2.createBall();
    // newBall3.createBall();
    
    
    time = currentTime;
  }
// Lots of balls

// Use your knowledge of classes and objects to make the program handle 10s of balls.
// Give them different colors, different speeds.
public class Ball{
 
  PVector position = new PVector();
  PVector velocity = new PVector();  
  
  BallBlueprint[] balls;
  public Ball(){
    position.x = random(0, 600);
    position.y = random(0, 600);
    velocity.x = random(0, 200);
    velocity.y = random(0, 200);

  }
  public Ball(int numberOfBalls){
    balls = new BallBlueprint[numberOfBalls];

    for (int i = 0; i > balls.length;  ++i) {
      balls[i] = new BallBlueprint();
  }

  }


 
 }

public void draw(){
  for(int i = 0; i < balls.length; ++i){
      balls[i].draw();
    }



}
public class BallBlueprint{
  PVector position = new PVector();
  PVector velocity = new PVector();  
  int size = 50;
  
	public BallBlueprint(){
    position = new PVector();
    position.x = random(0, 600);
    position.y = random(0, 600);
    velocity = new PVector();
    velocity.x = random(0, 200);
    velocity.y = random(0, 200);

 	}


public void draw(){
	position.x = position.x + (velocity.x * frameTime);
  position.y = position.y + (velocity.y * frameTime);
  
    
    
    velocity.y = velocity.y + (10 * frameTime);
    fill(255);
    ellipse(position.x - size/2, position.y - size/2, size, size);
    //velocity.x = velocity.x + (10 * frameTime);

	cantEscape();
	
}

public void cantEscape(){
if((position.x > width) || (position.x < 0)){
    velocity.x = -velocity.x;
   
     if (position.x > width){
      position.x = width -1;
   }
}
  if(position.y > height){
      position.y = height -5;
      velocity.y = -velocity.y;
      velocity.y = velocity.y * 1f;
   }
  if (position.y < 0 ){
      position.y = 5;
      velocity.y = -velocity.y;
  } 
}
}
  public void settings() {  size(800, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "classBall" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
