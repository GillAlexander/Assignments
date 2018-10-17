void mouseLocation(){
	cells[mouseX][mouseY].alive = isAlive(mouseX,mouseY);
}
void keyPressed(){
 if(key == 'p'){//p är toggle för pause
    if(pause == false){
    	pause = true;
    	noLoop();
    }
	else{
		pause = false;
		loop();
	}     
}
if (key == 'm') {
	changeScreenFrameRate+= 1;
	println(changeScreenFrameRate);
}
if (key == 'n') {
	changeScreenFrameRate-= 1;
	println(changeScreenFrameRate);
}
if (key == 'o') {
	println(changeScreenFrameRate);
}
}
void keyReleased(){
	if (key == 'm') {
	changeScreenFrameRate+=0;
}
	if (key == 'n') {
		changeScreenFrameRate-=0;
	}
}