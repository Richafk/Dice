void setup()
{
  size(500, 300);
  textAlign(CENTER,CENTER);
  noLoop();
}

void draw()
{
  background(192);
  int numHeads=0;
  for(int x=40;x<500;x=x+60){
    Coin art=new Coin(x,150);
    art.show();
    if(art.heads==true){
     numHeads++; 
    }
    text("There are " + numHeads +  " headsup coins", 250,250);
  }
  
}
void mousePressed()
{
  redraw();
}
class Coin
{
  //three member variables
  boolean heads; 
  int myX, myY;

  //three member functions
  Coin(int x, int y) //constructor initailizes member variables
  {
    
    myX=x;
    myY=y;
    flip();
  }
  void flip()
  {
    if (Math.random()<.5){
      heads=true;
    }else{
    heads=false;
    }
  }
  void show()
  {
    noStroke();
    fill(255);
    ellipse(myX,myY,50,50);
    fill(0);
    if(heads==true){
      text("heads",myX,myY);
    }else{
      text("tails",myX,myY);
    }
  }
}