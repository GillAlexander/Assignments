public class Manager{

 Human[] humans;
  
  public Manager(int numberOfHumans){
    
     humans = new Human[numberOfHumans];
     
     for(int i = 0; i < humans.length; ++i){
        humans[i] = new Human();
        if(i == 19) {
          humans[i] = new Zombie();
        }
     }
  }
  
  void update()
  {
    for(int i = 0; i < humans.length; ++i){
      
      for(int j = i+1; j < humans.length; ++j){
        
        if(humans[i].size == 0 || humans[j].size == 0){
          continue;
        }
       
       
       boolean hasCollided = roundCollision(humans[i].position.x,
                                            humans[i].position.y,
                                            humans[i].size/2,

                                            humans[j].position.x,
                                            humans[j].position.y,
                                            humans[j].size/2);
                                            
                                            
        if (hasCollided) {
          humans[i] = new Zombie(humans[i].position.x, humans[i].position.y);
          humans[j] = new Zombie(humans[j].position.x, humans[j].position.y);
          
 
    humans[j].update();
        }
      }
    
    humans[i].update();

    } 
    
  }
  
  public void draw(){
    for(int i = 0; i < humans.length; i++){
      humans[i].draw();
    }
  }
  
}

boolean roundCollision(float x1, float y1, int size1, float x2, float y2, int size2)
{
  int maxDistance = size1 + size2;
  if(abs(x1 - x2) > maxDistance || abs(y1 - y2) > maxDistance)
  {
    return false;
  }
  else if(dist(x1, y1, x2, y2) > maxDistance)
  {
    return false;
  }
  else
  {
   return true;
  }
}
