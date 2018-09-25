public class ObjectGenerator{
  PVector object;
  public ObjectGenerator(int xPos, int yPos){
    object = new PVector(xPos, yPos);
    
  }
  
  
  void draw(){
    fill(120, 120, 240);
   rect(object.x, object.y, 50, 50); 
   object.y+=random(1.0, 2.0);
   objectCantEscapeTheScreen();
  }

  void objectCantEscapeTheScreen(){
  
    if(object.y > height){
        object.y = -20;
        object.x = random(width);
    }}
}
