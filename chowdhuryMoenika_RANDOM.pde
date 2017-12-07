import processing.pdf.*;
String filename = "chowdhuryMoenika_RANDOM.pdf";

float grid = random(15);
float color1 = random(200, 255);
float color2 = random(200, 255);
float color3 = random(200, 255);

float movX = 0;
float movY = 0;
float dX = 3;
float dY = 3;
float angle = random(360);
float angle_change = random(-0.5,0.5);

void setup(){
   size(1152,720); 
   beginRecord(PDF, filename);
     
   strokeWeight(.5);
   stroke(0, 20);
  
    for (int i = 0; i < width; i+=grid) { //grid
    line (i, 0, i, height);
      }
    for (int i = 0; i < height; i+=grid) {
    line (0, i, width, i);
      }
}

void draw(){

float x = random(0, width); //making random points for the random white lines 
float y = random(0, height);
float nx = random(0, width);
float ny = random(0, height);

stroke(random(255), 10);
strokeWeight(random(3));
line(x, y, nx, ny); //plotting random lines
  
  strokeCap(PROJECT);
  strokeWeight(random(4));
  angle += angle_change;
  translate(width/2, height/2); //rotating the angle by translating the space
  
  color col = color(color1,color2,color3); //creating own color based on specific palette
  float color1_change = random(-5,5); //each change of the angle changes the color so it is more engaging
  float color2_change = random(-5,5);
  float color3_change = random(-5,5);
  
  float direction = random(360); //can move anywhere
  
  movX += dX;
  movY += dY;
  
  color1 += color1_change; //instantiates the color change
  color2 += color2_change;
  color3 += color3_change;
  
    fill(col);
    stroke(col);
    line(movX, movY, random(25), random(25));
    
    if(direction >= 360) {
       dX = -dX;
    }
  
    if(direction <= 25) {
       dY = -dY; 
    }
    
    if(movY >= height/3 - (random(20))) {
       dY = -dY;
    }
    if(movY <= -height/3 + random(20)) {
       dY = -dY; 
    }
  
    if(movX >= width/3 - random(20)) {
       dX = -dX; 
    }
    if(movX <= -width/3 + random(20)) {
       dX = -dX; 
    }
  

}

void mouseClicked() {
      
  background(random(200,255), random(200, 255), random(200,255));
  
  color1 = random(100,155);
  color2 = random(100,155);
  color3 = random(100,155);
}

void keyPressed() {
  if(key == 'q') {
  endRecord();
  exit();
  }
}