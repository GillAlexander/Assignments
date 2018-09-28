Manager humanManager;

void setup(){
  size(1200, 900);
  humanManager = new Manager(30);
  frameRate(40);
}

void draw(){
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