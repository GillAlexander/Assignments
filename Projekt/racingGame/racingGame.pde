Car newCar;
ObjectGenerator newObject;
  boolean up = false;
  boolean down = false;
  boolean left = false;
  boolean right = false; 
  boolean moreCarSpeed = false;
  boolean lessCarSpeed = false;
  boolean pause = false;
  void setup () {
  size(800, 1000);
  frameRate(60);
  
  newCar = new Car(500, 500);
  newObject = new ObjectGenerator(2);
  
}



void draw(){
  background(78, 160, 0);
  newCar.draw();
  newObject.draw();
  
  if (newCar.velocity.y == 0) {
    pause = true;
  }
  else{
    pause = false;
  }
  
  
}

  void keyPressed() {
  
    if (keyPressed) {
      if (key == 'w') {
        up = true;
        println(up);
      }
      if (key == 's' ) {
        down = true;
      }
      if (key == 'a' ) {
        left = true;
      }
      if (key == 'd') {
        right = true;
      }
      if (key == 'o') {
        moreCarSpeed = true;
      }
      if (key == 'l') {
        lessCarSpeed = true;
      }
      if (key == 'p') {
        pause = true;
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
      if (key == 'o') {
        moreCarSpeed = false;
      }
      if (key == 'l') {
        lessCarSpeed = false;
      }
      if (key == 'p') {
        pause = false;
      }
   }