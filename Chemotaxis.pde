//declare bacteria variables here   
Bacteria [] one;

void setup()   
{     
  //initialize bacteria variables here
  size(500, 500);
  one = new Bacteria[10];
  for (int i=0; i<one.length; i++)
  {
    one[i] = new Bacteria();
  }
}   
void draw()   
{    
  //move and show the bacteria
  background(0);
  fill(247, 108, 44);
  rect(200,200, 100,100);
  for (int i=0; i<one.length; i++)
  {
    one[i].show();
    one[i].move();
  }
  fill(255, 77, 33);
  ellipse(mouseX,mouseY,50,50);
}  
class Bacteria    
{    
  int myX, myY, a, b, c, d;
  Bacteria()
  {
    myX = (int)(Math.random()*100);
    myY = (int)(Math.random()*500);
    a = (int)(Math.random()*240+15);
    b = (int)(Math.random()*240+15);
    c = (int)(Math.random()*240+15);
    d = 255;
  }
  void move()
  {
    if ((myX>15 && myX<485) && (myY>15 && myY<485))
    {
      if (mouseX<myX)
        myX = myX + (int)(Math.random()*9-3);
      else
        myX = myX - (int)(Math.random()*9-3);
      if (mouseY<myY)
        myY = myY + (int)(Math.random()*9-3);
      else
        myY = myY - (int)(Math.random()*9-3);
    }
    else
    {
      if (mouseX<myX)
        myX = myX - (int)(Math.random()*9-3);
      else
        myX = myX + (int)(Math.random()*9-3);
      if (mouseY<myY)
        myY = myY - (int)(Math.random()*9-3);
      else
        myY = myY + (int)(Math.random()*9-3);
    }
  }
  void show()
  {
    fill(a, b, c, d);
    noStroke();
    ellipse(myX, myY, 25, 25);
    //if (dist(myX,myY,mouseX,mouseY) < 20)
    //{
    //  a = 0;
    //  b = 0;
    //  c = 0;
    //  d = 0;
    //}
    if (dist(myX,myY,250,250) < 40)
    {
      a = 0;
      b = 0;
      c = 0;
      d = 0;
    }
  }
}    