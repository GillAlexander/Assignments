void setup()
{
  Linjer linj1;
  size(900,900);
  //int[] linj1 = new int[10, 10, 10, 20];
}



public void draw (){
  background(255);


    //public line = new Linjer(10, 20, 30, 40);
  
  
 stroke(0);
 strokeWeight(10);
 //line(linj1[0] , linj1.axis2, 20, 20);
 
 
 for (int i =0; i < height; i = i+10) {
  
  strokeWeight(2);
  line(0, i, i, width);
  stroke(220, 220, 220, 64);
   
   if (0==i%3){
     
       stroke(242,11,55);
   } 
 }
  for (int y =0; y < height; y = y+10) {
  //z=y+10;
  strokeWeight(2);
  line(y, 0, width, y);
  stroke(220, 220, 220, 64);
   
   if (0==y%3){ 
       stroke(100,11,55);
   }
 }
 
}
