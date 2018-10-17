GameObject cells[][];
float cellSize = 10;
int numberOfColumns;
int numberOfRows;
int screenFillPercentage = 20;
boolean pause = false;
boolean p = false;
int changeScreenFrameRate = 2;
float frameTime;
float time;
float currentTime;
void setup(){
	size(600, 600);
	

	//Delar upp skärmen i rader och kolumner beroende hur många pixlar cellSize är
	numberOfColumns = (int)Math.floor(width/cellSize);
	numberOfRows = (int)Math.floor(height/cellSize);
	//Dubbel Array, rutsystem med gameObjects
	cells = new GameObject[numberOfRows][numberOfColumns];
	//Skapa gameObject vid plats [y][x] med storlek cellSize
	
	for (int y = 0; y < numberOfRows; ++y) {
		for (int x = 0; x < numberOfColumns; ++x) {

			cells[y][x] = new GameObject(x * cellSize, y * cellSize, cellSize);

			
			if (random(0, 100) < screenFillPercentage) {
				cells[y][x].alive = true;
			}
			if (cells[y][x].alive == false) {
				
			}
				// if ((cells[y-1][x-1]).y == inBounds) {fill(255, 90, 0);}
				// if (cells[y-1][x].alive == false) {}
				// if (cells[y-1][x+1].alive == false) {}
				// if ( x -1 >= 0 && x + 1 < numberOfColumns) {
				// 	fill(120, 0, 100);
				// }
				// if (cells[y][x].alive == false) {} //Nuvarande Cell
				// if (cells[y][x+1].alive == false) {}
				// if (cells[y+1][x-1].alive == false) {}
				// if (cells[y+1][x].alive == false) {}
				// if (cells[y+1][x+1].alive == false) {}

}}}

void draw(){
	background(0);

	currentTime = millis();
	frameTime = currentTime - time;
	frameTime = frameTime * 0.001f;
	frameRate(changeScreenFrameRate);

	drawGameOnScreen();
	setColorOnCells();
	for (int y = 0; y < numberOfRows; ++y ) {
		for (int x = 0; x < numberOfColumns; ++x ) {
			cells[x][y].draw();
			

		}	
	}

//Ta reda på hur många grannar som finns runt objektet levande och döda
	for (int y = 0; y < numberOfRows; ++y ) {
		for (int x = 0; x < numberOfColumns; ++x ) {
		cells[x][y].livingNeighbours = checkNeighbours(x, y);
	}
}	//Uträtta spelreglerna, ta bort
	for (int y = 0; y < numberOfRows; ++y ) {
			for (int x = 0; x < numberOfColumns; ++x ) {
			cells[x][y].alive = isAlive(x, y);
		}
	}
	time = currentTime;
}
//Räknar ut alla grannar levande och döda. Hur många det finns.
public int checkNeighbours(int x, int y){
	int grannar = 0;
	//
	for (int i = -1; i <= 1; i++) {
		//Kollar ifall objektet är innanför skärmen på X axeln
		if (x + i >= 0 && x + i < numberOfColumns) {
			 for (int j = -1; j <= 1; j++) {
				//Kollar ifall objektet är innanför skärmen på Y axeln
				if (y + j >= 0 && y + j < numberOfRows) {
									//Ifall punkten är 0,0 i array. Bli falsk
					if (cells[x+i][y+j].alive && !( i==0  &&  j==0 )){

	           		grannar ++; 
					}
				}
			}
		}
	}
	if (grannar == 2) {
		// fill(random(0, 255), random(0, 255), random(0, 255));
	}
	
	return grannar;
}

void drawGameOnScreen(){
	
}

void setColorOnCells(){
	for (int y = 0; y < numberOfRows; ++y ) {
		for (int x = 0; x < numberOfColumns; ++x ) {
			cells[x][y].c = color(random(0,255), random(0,255), random(0,255));

			if (cells[x][y].x <= 125 && cells[x][y].y <= 125) {
				cells[x][y].c = color(255, 0,0);
			}
			if (cells[x][y].x >= 175 && cells[x][y].y >= 175) {
				cells[x][y].c = color(255, 255,0);
			}
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



// if (cells[x][y].x >= 50 || cells[x][y].x <= 75 
// // 		 && cells[x][y].y >= 75 || cells[x][y].y <= 100) {
// 			// for (int z = 0; z <= 50; ++z) {
// 			// }
// 			cells[x][y].c = color(255, 0, 255);
// 		}




// if (cells[x][y].x <= 50 && cells[x][y].y <= 50) {
			
// 			cells[x][y].c = color(100, 100, 100);
// 			// for (int z = 0; z <= 50; ++z) {
// 			// 	cells[z][z].c = color(255, 0, 0);
// 			// }
// 			// for (int q = 0; q <= 50; ++q) {
// 			// 	cells[q][q].c = color(255, 255, 0);
// 			// }
// 			// for (int b = 0; b <= 50; ++b) {
// 			// 	cells[x][y].c = color(0, 0, 255);
// 			// }
// 			// objectColor = color(100, 100, 100);
			
// 			// objectColor = color(random(0,255), random(0,255), random(0,255));
// 		}