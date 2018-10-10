GameObject cells[][];
float cellSize = 10;
int numberOfColumns;
int numberOfRows;
int fillPercentage = 15;
int number;
void setup(){
	size(500, 500);
	frameRate(10);
	
	numberOfColumns = (int)Math.floor(width/cellSize);
	numberOfRows = (int)Math.floor(height/cellSize);

	cells = new GameObject[numberOfRows][numberOfColumns];
	//Create our game object
	for (int y = 0; y < numberOfRows; y++) {
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
				if ( (cells[y][x]).x - 1 > numberOfColumns && cells[y][x].y  > numberOfRows) {
					fill(120, 0, 100);
				}
				// if (cells[y][x].alive == false) {} //Nuvarande Cell
				// if (cells[y][x+1].alive == false) {}
				// if (cells[y+1][x-1].alive == false) {}
				// if (cells[y+1][x].alive == false) {}
				// if (cells[y+1][x+1].alive == false) {}
				

}
			println(number);
		}
	}

		


void draw(){
	for (int y = 0; y < numberOfRows; y++ ) {
		
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

// public void checkIfAllowed(int numberOfRows, int numberOfColumns){
// 			boolean areCorrect = checkIfAllowed(numberOfRows) && checkIfAllowed(numberOfColumns);
// 			if (!areCorrect) {
// 				throw new IndexOutOfBoundsException("Row oc column is not acceptable.");
// 			}
// 		}