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
	changeFrameRate+= 1;
	println(changeFrameRate);
}
if (key == 'n') {
	changeFrameRate-= 1;
	println(changeFrameRate);
}
if (key == 'o') {
	println(changeFrameRate);
}
}
void keyReleased(){
	if (key == 'm') {
	changeFrameRate+=0;
}
	if (key == 'n') {
		changeFrameRate-=0;
	}
}