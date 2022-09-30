Die bob;
int value;
int average;
int timesRolled = 0;
int sumAll = 0;
void setup()
{
  //background(65,120,70);
  size(500,500);
  noLoop();
  
}
void draw()
{
 background(65,120,70);
 int sumDice = 0;
 for (int y = 15;y<390;y+=60){
  for (int x = 15;x<450;x+=60){
  bob = new Die(x,y);
  bob.show();
  sumDice+=value;
  sumAll+=value;
}
 }
 text("Sum of all dice is "+ sumDice+ ".",200,450);
 timesRolled++;
 text("Average sum is " + ((int)(sumAll/timesRolled))+ ".",200,465);
}

//int addToAverage(){
//  return (int)(sumAll/timesRolled);
//}

void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
 int myX,myY,valueDie;

  Die(int x, int y) //constructor
  {
    myY = y;
    myX = x;
  }
  int roll()
  {
   return (int)(Math.random()*6)+1;
  }
  void show()
  {
   value = roll();
   int valueColor = value*20;
   if (value==6)
   fill(200,5,255);
   else
   fill(250,230-valueColor,250);
   rect(myX,myY,50,50,10);
   fill(0);


   int sB = 12;
   int osB = 50-sB;
   if (value==1)
     ellipse(myX+25,myY+25,7,7);
    if (value==2){
     ellipse(myX+sB,myY+sB,7,7);
     ellipse(myX+osB,myY+osB,7,7);
    }
    if(value==3){
     ellipse(myX+sB,myY+sB,7,7);
     ellipse(myX+osB,myY+osB,7,7);
     ellipse(myX+25,myY+25,7,7);
    } 
    if(value==4){
     ellipse(myX+sB,myY+sB,7,7);
     ellipse(myX+osB,myY+sB,7,7);
     ellipse(myX+osB,myY+osB,7,7);
     ellipse(myX+sB,myY+osB,7,7);
    }
    if (value==5){
     ellipse(myX+sB,myY+sB,7,7);
     ellipse(myX+osB,myY+sB,7,7);
     ellipse(myX+osB,myY+osB,7,7);
     ellipse(myX+sB,myY+osB,7,7);
     ellipse(myX+25,myY+25,7,7);
  }
  if (value==6){
    ellipse(myX+sB,myY+sB,7,7);
     ellipse(myX+osB,myY+sB,7,7);
     ellipse(myX+osB,myY+osB,7,7);
     ellipse(myX+sB,myY+osB,7,7);
     ellipse(myX+sB,myY+25,7,7);
     ellipse(myX+osB,myY+25,7,7);
  }
  }
}
