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