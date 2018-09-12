void setup()
{
  size(768 , 432);
  frameRate(250);
  
}
int yPos=0;
int xPos =0;
int xDir =2;
int yDir =2;

void draw()
{
  strokeWeight(5.5);
  background(80, 80, 160);
  stroke(255);
  noFill();
  
  //J
  line(100+xPos, 115+yPos, 99+xPos, 283+yPos);
  line(24+xPos, 115+yPos, 100+xPos, 115+yPos);
  curve(154+xPos, -215+yPos, 24+xPos, 259+yPos, 99+xPos, 284+yPos, 34+xPos, -51+yPos);
  
 //add
  
  /* //Original letter J
  line(100, 115, 99, 283);
  line(24, 115, 100, 115);
  curve(154, -215, 24, 259, 99, bottomLine, 34, -51);
  */
  
  //o
  ellipse(160, 284, 70, 70);
  //n
  line(220, 320, 220, 255);
  curve(407, 171, 272, 319, 221, 264, -140, 486);
  
  //a
  curve(585, 214, 361, 327, 300, 253, -56, 440);
  arc(327, 305, 74, 45, 1, 5, 5);
  
  //t
  curve(451, -124, 395, 240, 425, 321, 522, 213);
  line(420, 260, 370, 260);
  
  //h
  line(450, 330, 450, 230);
  curve(423, 754, 500, 326, 450, 324, 526, 776);
  
  //a
   curve(815, 284, 601, 327, 530, 253, 189, 440);
  arc(564, 305, 74, 45, 1, 5, 5);
  
  //n
  line(620, 330, 620, 255);
  curve(772, 154, 673, 328, 620, 267, 257, 492);
  
  
  
   xPos=xPos+xDir;
  if (xPos>width-100 || xPos<-20)
  {
    xDir=xDir*-1;
  }
  yPos=yPos+yDir;
  if (yPos>height-330 || yPos<-110)
  {
    yDir=yDir*-1;
  }
}
