import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class assignment6ClassAndObjects extends PApplet {

Manager humanManager;

public void setup(){
  
  humanManager = new Manager(20);
  frameRate(40);
}

public void draw(){
  background(240, 170, 110);
  humanManager.update();
  humanManager.draw();
  
}

/* Assignments
Create a new class and make a character manager.
Create a Human class.
Create a Zombie class that inherits from human, but they are slower (and green).
Let the character manager spawn 99 humans and 1 Zombie.
Let the manager check if a Zombie "collies" with a human. If they collide, replace the Human with a new Zombie.
(there are several reasons for not doing it this way, more on that later).
When a human (or zombie) gets to the edge, they do not bounce like the balls, instead they screen warp to the other side.
Extra
When all humans are (un)dead print GAME OVER on the screen and how long it took before all died (time since the program started).
Improve the art of the program a bit.
Make the humans have slightly different sizes and colours.
Give the zombies arms that always points forward.
Create some more interesting movement behaviours for the humans.
They walk a set distance, selects a new random destination and moves on.
Humans should turn a maximum of 90 degrees.
Make the zombies follow the closest human.
*/
public class Human{
  
  PVector position;
  PVector velocity;
  int size = 50;
  
  public Human(){
     position = new PVector();
     position.x = random(0,width);
     position.y = random(0, height);
     
     velocity  = new PVector();
     velocity.x = random(-5, 5);
     velocity.y = random(-5, 5);
  }
  
  public Human(float x, float y){
     position = new PVector(x, y);
     
     velocity  = new PVector();
     velocity.x = random(-12, 12);
     velocity.y = random(-12, 12);
  }

  public void update(){
    position.add(velocity); 
    
    
    if(position.x > width || position.x < 0){
        velocity.x = -velocity.x;
    }
    if(position.y > height || position.y < 0){
        velocity.y = -velocity.y;
    }
  }
  
  public void draw(){
    fill(255);
   ellipse(position.x - size/2, position.y - size/2, size, size); 
  }
  
}
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
  
  public void update()
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

public boolean roundCollision(float x1, float y1, int size1, float x2, float y2, int size2)
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
public class Zombie extends Human {
  
  
  public Zombie(){
    super();
    
    velocity.x = velocity.x /2.5f;
    velocity.y = velocity.y /2.5f;
    
    
  }
  
  public Zombie(float x, float y){
    super(x, y);
    
    velocity.x = velocity.x /2.5f;
    velocity.y = velocity.y /2.5f;
    
    
  }
  
  public void draw(){
    
    fill(160, 225, 0);
    ellipse(position.x - size/2, position.y - size/2, 75, 75);
    
  }
  
}
  public void settings() {  size(1200, 900); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "assignment6ClassAndObjects" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
