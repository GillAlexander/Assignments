Car newCar;
ObjectGenerator newObject;
ObjectGenerator newObject1;
ObjectGenerator newObject2;
ObjectGenerator newObject3;
ObjectGenerator newObject4;
ObjectGenerator newObject5;

void setup () {
  size(1000, 800);
  frameRate(60);
  
  newCar = new Car(500, 500);
  newObject = new ObjectGenerator(50, 750);
  
  newObject1 = new ObjectGenerator(500, 300);
  
  newObject2 = new ObjectGenerator(400, 60);
  
  newObject3 = new ObjectGenerator(700, 520);
  newObject4 = new ObjectGenerator(900, 725);
  newObject5 = new ObjectGenerator(465, 270);
  
  
}



void draw(){
  background(78, 160, 0);
  newCar.draw();
  newObject.draw();
  newObject1.draw();
  newObject2.draw();
  newObject3.draw();
  newObject4.draw();
  newObject5.draw();
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
