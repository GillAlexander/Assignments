Car newCar;
ObjectGenerator newObject;

void setup () {
  size(1000, 800);
  frameRate(60);
  
  newCar = new Car(500, 500);
  newObject = new ObjectGenerator(20);
  
  
}



void draw(){
  background(78, 160, 0);
  newCar.draw();
  newObject.draw();
  
  newCar.keyPressed();
  newCar.keyReleased();
  
  newCar.updatePositions();
  
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
