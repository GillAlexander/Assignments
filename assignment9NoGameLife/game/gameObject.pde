public class GameObject{

	float x;
	float y;
	float size;
	float number;
	boolean alive = false;
	int livingNeighbours;
	int hasBeenAlive;
	color c;
	public GameObject (float x, float y, float size) {
		this.x =x;
		this.y = y;
		this.size = size;
	}

	void draw(){
		if (alive) {
			fill(c);
			rect(x, y, size, size);
			
		}
		
	}
	// void howLongAlive(){
	// 	hasBeenAlive;
	// }
}