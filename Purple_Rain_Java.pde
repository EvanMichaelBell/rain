//Purple Rain
// purple color (138,43,226)
//background (230,230,250)

Drop [] drops = new Drop[2000];

void setup() {
  size(640, 360);
  for (int x = 0; x<drops.length; x++) {
    drops[x]= new Drop();
  }
}


void draw() {
  background(230, 230, 250);
  for (int x = 0; x<drops.length; x++) {
    drops[x].fall();
    drops[x].show();
    if(drops[x].getY()>=width-20)
    {drops[x].setY(random(-100,width/10));}
  }
}
