void setup()
{
  noLoop();
  size(400,400);
}
void draw()
{
  int diesum = 0;
  background(0,100,0);
  for(int diex = 20;diex<380;diex=diex+40){
    for (int diey= 20;diey<380;diey=diey+40){
      Die die1 = new Die(diex,diey); //initialization and declaration
      die1.show();
      diesum = diesum +die1.rollnum;
      
    }
  }
  textSize(15);
  text(diesum, 190,392);
  //System.out.print("The sum of the values of the dice is ");
  //System.out.println(diesum);

}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int rollnum = (int)(Math.random()*6);
  int myX = 40;
  int myY = 40;
  
  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;
    fill(200,0,0);
    rect(myX,myY, 40,40);
    //variable initializations here
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    fill(255,255,255);
    if (rollnum!=1){
        ellipse(myX+10,myY+7,10,10);
        ellipse(myX+30,myY+33,10,10);
        if (rollnum>=4){
          ellipse(myX+30,myY+7,10,10);
          ellipse(myX+10,myY+33,10,10);
          if (rollnum == 6){
            ellipse(myX+30,myY+20,10,10);
            ellipse(myX+10,myY+20,10,10);
          }
        }
      }
    if ((rollnum ==1)||(rollnum==3)||(rollnum==5)){     
      ellipse(myX+20,myY+20,10,10);
    }
    //ellipse(myx,myy,40,40);
  }
}
