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
int screenFillPercentage = 20;
int changeScreenFrameRate = 12;
float frameTime;
float time;
float currentTime;
public void setup(){
	

	//Delar upp skärmen i rader och kolumner beroende hur stor cellSize är
	numberOfColumns = (int)Math.floor(width/cellSize);
	numberOfRows = (int)Math.floor(height/cellSize);

	//Dubbel Array, rutsystem med gameObjects
	cells = new GameObject[numberOfRows][numberOfColumns];
	
	for (int y = 0; y < numberOfRows; ++y) {
		for (int x = 0; x < numberOfColumns; ++x) {

			cells[y][x] = new GameObject(x, y, cellSize);		//Skapa gameObject vid plats [y][x] med storlek cellSize

			if (random(0, 100) < screenFillPercentage) {
				cells[y][x].alive = true;
			}
			if (cells[y][x].alive == false) {
				continue;
			}
		}
	}
}

public void draw(){
	currentTime = millis();
	frameTime = currentTime - time;
	frameTime = frameTime * 0.001f;
	frameRate(changeScreenFrameRate);

	drawGameOnScreen();
	setColorOnCells();
	findEveryPossibleNeighbour();
	executeGameRules();
	
	time = currentTime;
}


public void drawGameOnScreen(){
	background(0);
	for (int y = 0; y < numberOfRows; ++y ) {
		for (int x = 0; x < numberOfColumns; ++x ) {
			cells[x][y].draw();
		}
	}
	
}


public void setColorOnCells(){
	for (int y = 0; y < numberOfRows; ++y ) {
		for (int x = 0; x < numberOfColumns; ++x ) {

			// cells[x][y].c = color(random(0,255), random(0,255), random(0,255));
			if (cells[x][y].x <= mouseX && cells[x][y].y <= mouseY) {
				cells[x][y].c = color(225, 0,30);
			}
			if (cells[x][y].x >= mouseX && cells[x][y].y >= mouseY) {
				cells[x][y].c = color(255, 255,0);
			}
			if (cells[x][y].x <= mouseX && cells[x][y].y >= mouseY) {
				cells[x][y].c = color(0, 85, 255);
			}
			if (cells[x][y].x >= mouseX && cells[x][y].y <= mouseY) {
				cells[x][y].c = color(235, 235,235);
			}
		}                      
	}
}


public void findEveryPossibleNeighbour(){
	//Ta reda på hur många grannar som finns runt objektet levande och döda
	for (int y = 0; y < numberOfRows; ++y ) {
		for (int x = 0; x < numberOfColumns; ++x ) {
			cells[x][y].livingNeighbours = checkNeighbours(x, y);
		}
	}
}


public void executeGameRules(){
	for (int y = 0; y < numberOfRows; ++y ) {
			for (int x = 0; x < numberOfColumns; ++x ) {
			cells[x][y].alive = isAlive(x, y);
		}
	}
}
public boolean isAlive(int x, int y){
	if (cells[x][y].livingNeighbours < 2) {
		return false;
	}
	if(cells[x][y].livingNeighbours > 3) {
		return false;
	}
	 if(cells[x][y].alive) {
		return true;
	}
	
	if (cells[x][y].livingNeighbours == 3 && !(cells[x][y].alive)) {
		return true;
	}
	return false;
}
public void mouseLocation(){
	cells[mouseX][mouseY].alive = isAlive(mouseX,mouseY);
}
boolean pause = false;
boolean p = false;
public void keyPressed(){
 if(key == 'p'){//p är toggle för pause
    if(pause == false){
    	pause = true;
    	noLoop();
    }
	else{
		pause = false;
		loop();
	}     
	}
	if (key == 'm') {
		changeScreenFrameRate+= 1;
		println(changeScreenFrameRate);
	}
	if (key == 'n') {
		changeScreenFrameRate-= 1;
		println(changeScreenFrameRate);
	}
	if (key == 'o') {
		println(changeScreenFrameRate);
	}
	if (key == 'r') {
		setup();
	}
}
public void keyReleased(){
	if (key == 'm') {
	changeScreenFrameRate+=0;
	}
	if (key == 'n') {
		changeScreenFrameRate-=0;
	}
	}
public int checkNeighbours(int x, int y){	//Räknar ut alla grannar, levande och döda
	int neighbours = 0;
	for (int i = -1; i <= 1; i++) {		//Kollar ifall objektet är innanför skärmen på X axeln
	
		if (x + i >= 0 && x + i < numberOfColumns) {	
			 for (int j = -1; j <= 1; j++) {	//Kollar ifall objektet är innanför skärmen på Y axeln
				
				if (y + j >= 0 && y + j < numberOfRows) {
									
					if (cells[x+i][y+j].alive && !( i==0  &&  j==0 )){//Ifall punkten är 0,0 i array. Bli falsk
	           			neighbours ++; 
					}
				}
			}
		}
	}
	if (neighbours == 2) {
		// fill(random(0, 255), random(0, 255), random(0, 255));
	}
	return neighbours;
}
public class GameObject{

	float x;
	float y;
	float size;
	boolean alive = false;
	int livingNeighbours;
	int c;
	public GameObject (float x, float y, float size) {
		this.x =x * cellSize;
		this.y = y * cellSize;
		this.size = size;
	}
	public void draw(){
		if (alive) {
			fill(c);
			rect(x, y, size, size);
		}
	}
}
  public void settings() { 	size(600, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "game" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
