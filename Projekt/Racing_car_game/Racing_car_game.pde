Car newCar;
void setup () {
  size(1000, 1000);
  frameRate(60);
  
  newCar = new Car(500, 500);
}



void draw(){
  background(78, 160, 0);
  newCar.draw();
  
}


/*
int value = 0;

void draw() {
  fill(value);
  rect(25, 25, 50, 50);
}

void keyPressed() {
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
}

*/
