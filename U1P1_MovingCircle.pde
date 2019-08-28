/* 
      Don't Touch The Line by Maelys
   
      This is a simple project when you control the circle with
      "w","a","s", and "d". If you touch the small box then you
      are returned to your starting positiong
      Teleportation is also possible by pressing the "c" key

*/

float x = 50;
float y = 50;
int size = 50;
String playerName = "UndetectableBandit";

void setup()
{
  size(800, 800);
}

void draw()
{
  background(204, 204, 204); 
  fill(random(225), random(225), random(225));

  //Ellipse
  ellipse(x, y, 50, 50);
  text(playerName,x-50,y-50);
  //Lines used to revert circle back --- "bad lines"
  line(0,420,600,420);
  line(0,400,600,400);
  line(600,420,600,400);
}

void keyPressed()
{
  if (key == 'a' || key == 'A')
  {
    x=x-10;
  }

  if (key == 'd' || key == 'D')
  {
    x=x+10;
  }

  if (key == 'w' || key == 'W')
  {
    y=y-10;
  } 

  if (key == 's' || key == 'S')
  {
    y=y+10;
  }

  if (y>375 && y<445 && x<627)
  {
      y=50;
      x=50;
  }
  
  if (key == 'c' || key == 'C')
  {
    x=mouseX;
    y=mouseY;
  }
  
}
