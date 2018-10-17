public class GameObject{
	float x;
	float y;
	float size;
	boolean alive = false;
	int livingNeighbours;
	color c;
	public GameObject (float x, float y, float size) {
		this.x =x * cellSize;
		this.y = y * cellSize;
		this.size = size;
	}
	void draw(){
		if (alive) {
			fill(c);
			rect(x, y, size, size);
		}
	}
}