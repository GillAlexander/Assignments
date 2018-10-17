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
											//Om cellen inte lever
	if (cells[x][y].livingNeighbours == 3 && !(cells[x][y].alive)) {
		return true;
	}
	return false;
}