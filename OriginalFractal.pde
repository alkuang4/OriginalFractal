public void setup()
{
  size(500,500);
  rectMode(CENTER);
}
public void draw()
{
  background(0);
  myFractal(250,250,480);
}
public void myFractal(int x, int y, int siz)
{
  fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  ellipse(x,y,siz,siz);
  if(siz>5)
  {
    myFractal(x-2*siz/2,y-siz,siz/2);
    myFractal(x+2*siz/2,y+siz,siz/2);
  }
   ellipse(x,y,siz,siz);
  if(siz>5)
  {
    myFractal(x-2*siz/2,y+siz,siz/2);
    myFractal(x+2*siz/2,y-siz,siz/2);
  }
}
