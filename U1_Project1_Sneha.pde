PImage pMaze; 
PImage donald; 
float xDirection; 
int xdirection = 1; 
int ydirection = 1; 
int rad = 60;
int x = 0;
float xpos, ypos;   
float xspeed = 25.8; 
float yspeed = 25.2;  


void setup()
{
  fullScreen();
  pMaze = loadImage("mazeProcessing.png");
  donald = loadImage("Donald.jpg"); 

  
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


 if(dist(mouseX, mouseY, xpos, ypos) < rad){
   background(255, 0, 0); 
  }
  else

    fill(0, 255, 0);
  }
}