public class Car{
  
  int rectX;
  int rectY;
  PVector carPosition;
  PVector velocity;
  float speed = 1;
<<<<<<< HEAD
  
=======
  int carWidth = 25;
  int carHeight = 45;
>>>>>>> 12b5fc8bb831d9be81e110c866111000fd8f29ca
  public Car(float x, float y){
    carPosition = new PVector(x, y);
    velocity = new PVector(0, 0);
  }
  
  
  void draw(){
    fill(224, 134, 142);
    rect(carPosition.x, carPosition.y, carWidth, carHeight);
    carPosition.add(velocity);
    updatePositions();
    carCantEscapeTheScreen();
  } 

  void updatePositions() {  
<<<<<<< HEAD
       if(up == true){  
         carPosition.y = carPosition.y - 10; 
       }  
=======
       // if(up == true){  
       //   carPosition.y = carPosition.y - 1; 
       // }  
>>>>>>> 447e02c54ae2604852db7c5d957c4424d2572c1a
       if(down == true){  
          carPosition.y = carPosition.y + 10;  
       }  
<<<<<<< HEAD
       if(left == true){  
         carPosition.x = carPosition.x - 10;  
       }  
       if(right == true){  
          carPosition.x = carPosition.x + 10;  
       }
=======
       
       
>>>>>>> 447e02c54ae2604852db7c5d957c4424d2572c1a
       if (moreCarSpeed) {
         velocity.y =- 1;

            if(left == true){  
              carPosition.x = carPosition.x - 2;  
             }  
             if(right == true){  
              carPosition.x = carPosition.x + 2;  
             }
       }
       if (moreCarSpeed == false) {
         velocity.y = 0;
       }
}  
  
  
  void carCantEscapeTheScreen(){
  if(carPosition.x > width - carWidth/2){
        carPosition.x = width - carWidth/2;
    }
    // if(carPosition.x > 765 ){
    //     carPosition.x = 765;
    // } 
    if (carPosition.x < carWidth/2) {
      carPosition.x = carWidth/2;
    }
    
    if(carPosition.y > 965){
        carPosition.y = 965;
    }
    if(carPosition.y < 5) {
      carPosition.y = 5;
    }

  }
}