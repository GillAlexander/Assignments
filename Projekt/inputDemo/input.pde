boolean moveLeft;
boolean moveRight;
void keyPressed(){
	if (key == CODED) {
		if (keyCode == RIGHT) {
			moveRight = true;
		}
		if (keyCode == LEFT) {
			moveLeft = true;
		}
	}
	if (key == 'd') {
		moveRight = true;
	}
	else if (key == 'a') {
		moveLeft = true;
	}
}

void keyReleased(){
	if (key == CODED) {
		if (keyCode == RIGHT) {
			moveRight = false;
		}
		if (keyCode == LEFT) {
			moveLeft = false;
		}
	}

	if (key == 'd') {
		moveRight = false;
	}
	else if (key == 'a') {
		moveLeft = false;
	}
}

float getAxisRaw(String axis){

	

	if (axis == "Horizontal") {
		if (moveLeft) {
			return -1;
		}
		if (moveRight) {
			return 1;
		}
	}
	if (axis == "Vertical") {
		
	}
	return 0;
}