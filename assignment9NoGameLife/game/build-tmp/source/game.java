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

public class game extends PApplet {

GameObject cells[][];
float cellSize = 10;
int numberOfColumns;
int numberOfRows;
int fillPercentage = 15;
int number;
public void setup(){
	
	frameRate(10);
	
	numberOfColumns = (int)Math.floor(width/cellSize);
	numberOfRows = (int)Math.floor(height/cellSize);

	cells = new GameObject[numberOfRows][numberOfColumns];
	//Create our game object
	for (int y = 0; y < numberOfRows; ++y) {
		for (int x = 0; x < numberOfColumns; ++x) {

		// boolean inBounds = ((cells[y][x]).y >= 0) && ((cells[y][x]).y < numberOfRows);

			cells[y][x] = new GameObject(x * cellSize, y * cellSize, cellSize);
			if (random(0, 100) < fillPercentage) {
				cells[y][x].alive = true;
			}
			if (cells[y][x].alive == false) {
				number++;
			}
				// if ((cells[y-1][x-1]).y == inBounds) {fill(255, 90, 0);}
				// if (cells[y-1][x].alive == false) {}
				// if (cells[y-1][x+1].alive == false) {}
				if ((cells[y][x-1]).x >= 0) {}
				// if (cells[y][x].alive == false) {} //Nuvarande Cell
				// if (cells[y][x+1].alive == false) {}
				// if (cells[y+1][x-1].alive == false) {}
				// if (cells[y+1][x].alive == false) {}
				// if (cells[y+1][x+1].alive == false) {}
				


}
			println(number);
		}
	}

		


public void draw(){
	for (int y = 0; y < numberOfRows; ++y ) {
		
		for (int x = 0; x < numberOfColumns; ++x ) {
		cells[x][y].draw();
	}
	}
	

}
/*
Calculate the next board state, checking each spot on the grid.
Make sure you can handle all edge cases.
Do all calculation in memory before updating the grid.
*/
// class Alive{
	
// 	Alive(){
// 	if (random(0, 100) < fillPercentage) {
// 				cells[x][y].alive = true;
// 			}
// 	}
// 	Alive(){
		
		
// 	}
// }
public class GameObject{

	float x;
	float y;
	float size;
	float number;
	boolean alive = false;
	public GameObject (float x, float y, float size) {
		this.x =x;
		this.y = y;
		this.size = size;
	}

	public void draw(){
		if (alive) {
			rect(x, y, size, size);
		}
		
	}
}
  public void settings() { 	size(500, 500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "game" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
