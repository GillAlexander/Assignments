GameObject cells[][];
float cellSize = 10;
int numberOfColumns;
int numberOfRows;
int screenFillPercentage = 20;
int changeScreenFrameRate = 12;
float frameTime;
float time;
float currentTime;
void setup(){
	size(600, 600);

	//Delar upp skärmen i rader och kolumner beroende hur stor cellSize är
	numberOfColumns = (int)Math.floor(width/cellSize);
	numberOfRows = (int)Math.floor(height/cellSize);

	//Dubbel Array, rutsystem med gameObjects
	cells = new GameObject[numberOfRows][numberOfColumns];
	
	for (int y = 0; y < numberOfRows; ++y) {
		for (int x = 0; x < numberOfColumns; ++x) {

			cells[y][x] = new GameObject(x, y, cellSize);	//Skapa gameObject vid plats [y][x] med storlek cellSize

			if (random(0, 100) < screenFillPercentage) {
				cells[y][x].alive = true;
			}
			if (cells[y][x].alive == false) {
				continue;
			}
		}
	}
}

void draw(){
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


void drawGameOnScreen(){
	background(0);
	for (int y = 0; y < numberOfRows; ++y ) {
		for (int x = 0; x < numberOfColumns; ++x ) {
			cells[x][y].draw();
		}
	}
}


void setColorOnCells(){
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


void findEveryPossibleNeighbour(){
	//Ta reda på hur många grannar som finns runt objektet levande och döda
	for (int y = 0; y < numberOfRows; ++y ) {
		for (int x = 0; x < numberOfColumns; ++x ) {
			cells[x][y].livingNeighbours = checkNeighbours(x, y);
		}
	}
}

r
void exCTHBNMAQDEF5g |recuteGameRules(){
	for (int y = 0; y r< numberOfRows; ++y ) {
			for (int x = 0; x < numberOfColumns; ++x ) {
			cells[x][y].alive = isAlive(x, y);
		}
	}
}