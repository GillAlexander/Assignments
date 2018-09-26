Car newCar;
ObjectGenerator newObject;
  boolean up = false;
  boolean down = false;
  boolean left = false;
  boolean right = false; 
void setup () {
  size(800, 1000);
  frameRate(60);
  
  newCar = new Car(500, 500);
  newObject = new ObjectGenerator(40);
  
}



void draw(){
  background(78, 160, 0);
  newCar.draw();
  newObject.draw();
  
  
  
  newCar.updatePositions();
  newCar.draw();
}

  void keyPressed() {
  
    if (keyPressed) {
      
    
      if (key == 'w') {
        up = true;
        println(up);
      }
      if (key == 'a' ) {
        left = true;
      }
      if (key == 's' ) {
        down = true;
      }
      if (key == 'd') {
        right = true;
      }
   }
}

void keyReleased() {
      if (key == 'w') {
        up = false;
        println(up);
      }
      if (key == 'a' ) {
        left = false;
      }
      if (key == 's' ) {
        down = false;
      }
      if (key == 'd') {
        right = false;
      }
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
