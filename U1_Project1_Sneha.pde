PImage pMaze; 
PImage donald; 
float xDirection; 
//float value = random(250);  

void setup()
{
  fullScreen();
  pMaze = loadImage("mazeProcessing.png");
  donald = loadImage ("Donald.png"); 
  

}

void draw()
{
  background(255);
pMaze.resize (width,height);
 image (pMaze, 0, 0);
 //pMaze.resize (50,50); 
    image (donald, mouseX, mouseY); 
donald.resize (40,50);
 
}
 
 