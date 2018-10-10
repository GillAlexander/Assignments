GameObject cells[][];
float cellSize = 10;
int numberOfColumns;
int numberOfRows;
int fillPercentage = 20;
int number;
void setup(){
	size(1200, 1200);
	frameRate(60);
	
	numberOfColumns = (int)Math.floor(width/cellSize);
	numberOfRows = (int)Math.floor(height/cellSize);

	cells = new GameObject[numberOfRows][numberOfColumns];
	//Create our game object
	for (int y = 0; y < numberOfRows; ++y) {
		for (int x = 0; x < numberOfColumns; ++x) {

			cells[y][x] = new GameObject(x * cellSize, y * cellSize, cellSize);

			
			if (random(0, 100) < fillPercentage) {
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
				
				
}
			
		}

			// cells[1][1].alive = true;
			// cells[1][2].alive = true;
			// cells[2][1].alive = true;


			
	}


		




void draw(){
	background(0);

	for (int y = 0; y < numberOfRows; ++y ) {
		for (int x = 0; x < numberOfColumns; ++x ) {
		cells[x][y].draw();
	}
}
	for (int y = 0; y < numberOfRows; ++y ) {
		for (int x = 0; x < numberOfColumns; ++x ) {
		cells[x][y].livingNeighbours = checkNeighbours(x, y);
	}
}

for (int y = 0; y < numberOfRows; ++y ) {
		for (int x = 0; x < numberOfColumns; ++x ) {
		cells[x][y].alive = isAlive(x, y);
	}
}

	}
//Räknar ut alla grannar levande och döda. hur många det finns.
public int checkNeighbours(int x, int y){
	int grannar = 0;
	for (int i = -1; i <= 1; i++) {
		if (x + i >= 0 && x + i < numberOfColumns) {
			 for (int j = -1; j <= 1; j++) {
		
				if (y + j >= 0 && y + j < numberOfRows) {
					if (cells[x+i][y+j].alive && !( i==0  &&  j==0 )){

	           		grannar ++; 
	            }
			}
		}
	}
}
	return grannar;
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