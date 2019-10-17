int sum =0;
void setup()
{
  size(500, 300);
  textAlign(CENTER,CENTER);
  noLoop();
  
}
void draw()
{
  background(200);
  int sum = 0;
  for(int y = 20; y<= 400; y+=50){
    for(int x = 20; x<= 400; x+=50){
    Die bob = new Die(x,y);
    bob.roll();
    bob.show();
    sum = sum + bob.rollValue;  
    }
  }
  text("Sum of die is " + sum, 200,200);
  sum =0;
}
void mousePressed()
{
  redraw();
}
class Die
{
  //three member variables
  int myX, myY, rollValue;

  //three member functions
  Die(int x, int y) //constructor initailizes member variables
  {
    myX=x;
    myY=y;
  }
  void roll()
  {
    rollValue = (int)(Math.random()*6)+1;
  }
  void show()
  {
    noStroke();
    fill(155);
    rect(myX,myY,200,200);
    int noU=(int)(Math.random()*255);
    fill(noU);
    if(rollValue == 1){
      fill(0,0,255);
      ellipse(myX+20,myY+20,5,5);
    }
    if(rollValue == 2){
      fill(0,255,0);
      ellipse(myX+10,myY+10,5,5);
      ellipse(myX+30,myY+30,5,5);
    }
    if(rollValue == 3){
      fill(255,0,0);
      ellipse(myX+20,myY+20,5,5);
      ellipse(myX+10,myY+10,5,5);
      ellipse(myX+30,myY+30,5,5);
    }
    if(rollValue == 4){
      fill(0,0,255);
      ellipse(myX+10,myY+10,5,5);
      ellipse(myX+30,myY+30,5,5);
      ellipse(myX+10,myY+30,5,5);
      ellipse(myX+30,myY+10,5,5);
    }
    if(rollValue == 5){
      fill(0,255,0);
      ellipse(myX+10,myY+10,5,5);
      ellipse(myX+30,myY+30,5,5);
      ellipse(myX+10,myY+30,5,5);
      ellipse(myX+30,myY+10,5,5);
      ellipse(myX+20,myY+20,5,5);
    }
    if(rollValue == 6){
      fill(255,0,0);
      ellipse(myX+10,myY+10,5,5);
      ellipse(myX+30,myY+30,5,5);
      ellipse(myX+10,myY+30,5,5);
      ellipse(myX+30,myY+10,5,5);
      ellipse(myX+10,myY+20,5,5);
      ellipse(myX+30,myY+20,5,5);
    }
  }
}

