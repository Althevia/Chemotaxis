//declare bacteria variables here   
Bacteria one;

void setup()   
{     
  //initialize bacteria variables here
  size(500, 500);
  one = new Bacteria(78);
}   
void draw()   
{    
  //move and show the bacteria
  background(255);
  one.show();
  one.move();
}  
class Bacteria    
{    
  int myX, myY, colour;
  Bacteria(int c)
  {
    myX = 250;
    myY = 250;
    colour = c;
  }
  void move()
  {
    myX = myX + (int)(Math.random()*5-2);
    myY = myY + (int)(Math.random()*5-2);
  }
  void show()
  {
    fill(colour);
    ellipse(myX, myY, 100, 50);
  }
}    