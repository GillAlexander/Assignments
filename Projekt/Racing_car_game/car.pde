public class Car{
  
  int rectX;
  int rectY;
  PVector carPosition;
  
  public Car(float x, float y){
    carPosition = new PVector(x, y);
    
    
  }
  
   public Car(){
    
    
    
  }
  
  void draw(){
  
    fill(224, 134, 142);
    rect(rectX, rectY, 25, 45);
  }
  
  
}
