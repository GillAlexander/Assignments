Car newCar;
ObjectGenerator newObject;
  boolean up = false;
  boolean down = false;
  boolean left = false;
  boolean right = false; 
  boolean moreCarSpeed = false;
  boolean lessCarSpeed = false;
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
      if (key == 'o') {
        car.velocity.x = 10;
      }
      if (key == 'o') {
        
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