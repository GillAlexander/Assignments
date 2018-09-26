public class Car{
  
  int rectX;
  int rectY;
  PVector carPosition;
  PVector velocity;
  float speed = 1;

  public Car(float x, float y){
    carPosition = new PVector(x, y);
    velocity = new PVector(0, 0);
  }
  
  
  void draw(){
    fill(224, 134, 142);
    rect(carPosition.x, carPosition.y, 25, 45);
    carPosition.add(velocity);
    
    carCantEscapeTheScreen();
  } 

  void updatePositions() {  
       if(up == true){  
         carPosition.y = carPosition.y - 10; 
       }  
       if(down == true){  
          carPosition.y = carPosition.y + 10;  
       }  
       if(left == true){  
         carPosition.x = carPosition.x - 10;  
       }  
       if(right == true){  
          carPosition.x = carPosition.x + 10;  
       }
}  
  
  
  void carCantEscapeTheScreen(){
  if(carPosition.x > 765){
        carPosition.x = 765;
    }
    if (carPosition.x < 5) {
      carPosition.x = 5;
    }

    if(carPosition.y > 965){
        carPosition.y = 965;
    }
    if(carPosition.y < 5) {
      carPosition.y = 5;
    }

  }
}