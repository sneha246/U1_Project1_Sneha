PImage pMaze; 
PImage donald; 
float xDirection; 
int rad = 60;    
float xpos, ypos;   
float xspeed = 5.8; 
float yspeed = 5.2;  
int xdirection = 1; 
int ydirection = 1; 
int x = 0;



void setup()
{
  fullScreen();
  pMaze = loadImage("mazeProcessing.png");
  donald = loadImage("Donald.png"); 

  
 fullScreen();
  noStroke();
  fill(200);      
  frameRate(50);
  ellipseMode(RADIUS);

  xpos = width/2;
  ypos = height/2;
 
 
}

void draw()
{
  background(255);
pMaze.resize (width,height);

 image (pMaze, 0, 0);
  
 image (donald, mouseX, mouseY); 
donald.resize (40,50);

  
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  
  if (xpos > width-rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }
{
 ellipse(xpos, ypos, rad, rad);
 

}





 
} 