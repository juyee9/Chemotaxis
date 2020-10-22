fish fishSpawn = new fish();
fish[] fishNum;
int arrayNum = 4;
void setup()   
{
  size(600,600); 
  fishNum = new fish[arrayNum];
  for(int i = 0; i < fishNum.length; i++)
  {
    fishNum[i] = new fish();
  } 
}   
void draw()   
 {  
   background(0,100,255);
   for(int i = 0; i < fishNum.length; i++)
   {
     fishNum[i].show();
     fishNum[i].walk();
   }
   fishSpawn.show();
   fishSpawn.walk();
}  
class fish   
{  
  int fishX, fishY;
  fish()
  {
    fishX = fishY = 300;
  }
  void walk()
  {
    if(mouseX > fishX)
    {
      fishX = fishX + (int)(Math.random()*5)-1; //right
    }
    else
    {
      fishX = fishX + (int)(Math.random()*5)-3; //left
    }
    if(mouseY > fishY)
    {
      fishY = fishY + (int)(Math.random()*5)-1; //right
    }
    else
    {
      fishY = fishY + (int)(Math.random()*5)-3; //left
    }
  }
  void show()
  {
    //lil fishes
  
    fill(255,165,0); //tail
    stroke(0);
    triangle(fishX,fishY,fishX,fishY + 10,fishX - 10,fishY + 10);
    fill(255,255,102); //yellow lil fish
    ellipse(fishX + (22/2),fishY + (25/2),(50/2),(30/2));
    fill(0); //black for eyes
    ellipse(fishX + (35/2),fishY+ (20/2),(5/2),(5/2));
    
    //big fish
    
    fill(255,165,0); //tail
    stroke(0);
    triangle(mouseX,mouseY,mouseX,mouseY + 20,mouseX - 20,mouseY + 20);
    fill(10,100,10); //big fish 
    ellipse(mouseX + 22,mouseY + 25,50,30);
    fill(0); //black for eyes
    ellipse(mouseX + 35,mouseY + 20,5,5);

  }
}  
void mousePressed()
{
   arrayNum = arrayNum + 1;
   redraw();
   
}
