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

public class inputDemo extends PApplet {

PVector position;
float speed = 5;
public void setup(){
	
	position = new PVector(width/2, height/2);
	ellipseMode(CENTER);
}

public void draw(){
	
	float xMovement = getAxisRaw("Horizontal") * speed;

	position.x += xMovement;

	ellipse(position.x, position.y, 50, 50);
}
boolean moveLeft;
boolean moveRight;
public void keyPressed(){
	if (key == CODED) {
		if (keyCode == RIGHT) {
			moveRight = true;
		}
		if (keyCode == LEFT) {
			moveLeft = true;
		}
	}
	if (key == 'd') {
		moveRight = true;
	}
	else if (key == 'a') {
		moveLeft = true;
	}
}

public void keyReleased(){
	if (key == CODED) {
		if (keyCode == RIGHT) {
			moveRight = false;
		}
		if (keyCode == LEFT) {
			moveLeft = false;
		}
	}

	if (key == 'd') {
		moveRight = false;
	}
	else if (key == 'a') {
		moveLeft = false;
	}
}

public float getAxisRaw(String axis){

	

	if (axis == "Horizontal") {
		if (moveLeft) {
			return -1;
		}
		if (moveRight) {
			return 1;
		}
	}
	if (axis == "Vertical") {
		
	}
	return 0;
}
  public void settings() { 	size(800, 800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "inputDemo" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
