Car newCar;
void setup () {
  size(600, 850);
  
  
  newCar = new Car(300, 700);
}



void draw(){
  background(78, 160, 0);
  newCar.draw();
  
}
