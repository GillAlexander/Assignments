public class GameObject{

	float x;
	float y;
	float size;
	float number;
	boolean alive = false;
	int livingNeighbours;
	public GameObject (float x, float y, float size) {
		this.x =x;
		this.y = y;
		this.size = size;
	}

	void draw(){
		if (alive) {
			rect(x, y, size, size);
		}
		
	}



	void checkNeighbours(){
	float grannar = 0;
	//
	for (int i = -1; i <= 1; i++) {
		//Kollar ifall objektet är innanför skärmen på X axeln
		if (this.x + i >= 0 && this.x + i < numberOfColumns) {
			//
			 for (int j = -1; j <= 1; j++) {
				//Kollar ifall objektet är innanför skärmen på Y axeln
				if (this.y + j >= 0.0 && this.y + j < numberOfRows) {

					if (cells[this.x+i][this.y+j].alive && !( i==0.0  &&  j==0.0 )){

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
}