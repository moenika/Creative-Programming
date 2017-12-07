PFont font;
int grid = 20;
color color1, color2, color3;

void setup() {
  size(800,800);
  font = createFont("AvenirNextCondensed-UltraLight", 100);
  textFont(font, 100);
  textAlign(CENTER);
  color1 = color(102, 152, 183); //defining the colors
  color2 = color(28, 96, 137);
  color3 = color(186, 205, 216);
}

void draw() {
  background(250, 247, 255); //initial background
  
    if (second() % 2 == 0) { //mod 2 and 4 (below) so that we switch every second
    background(255);
    }
  
    if (second() % 4 == 0) {
    background(188, 212, 227);
    }
    
      stroke(5);
      line(400, 800, 400, 0); // to show people the quarters (easier to count the time)
      line(0, 400, 800, 400);
      
    if(second() % 5 == 0) { // makes a cool ring around it every 5 seconds
      stroke(255);
      fill(186, 205, 216, 50);
      ellipse(400, 400, 600, 600);
    }
  
  strokeWeight(0);
  fill(255);
  stroke(0);
  
    for (int i = 0; i < width; i+=grid) { //grid
    line (i, 0, i, height);
      }
  for (int i = 0; i < height; i+=grid) {
    line (0, i, width, i);
      }
      
  stroke(255);
  fill(255, 255, 255);
  ellipse(400, 400, 550, 550); //initial ellipse that the entire clock is on

  strokeWeight(1.5);
  
  //hours
  stroke(0);
  fill(color3);
  float hAngle = map(hour()%12, 0, 12, 0, 2*PI); //maps the position to each sectiono
  arc(400, 400, 470, 470, -PI/2, hAngle-PI/2);

  //minutes
  fill(color1);
  float mAngle = map(minute(), 0, 60, 0, 2*PI);
  arc(400, 400, 380, 380, -PI/2, mAngle-PI/2);
  fill(212, 186, 216);
  stroke(0);
  ellipse(400, 400, 340, 340);
  
  
  //second
  fill(color2);
  float sAngle = map(second(), 0, 60, 0, 2*PI);
  arc(400, 400, 300, 300, -PI/2, sAngle-PI/2);
  fill(150, 103, 157);
  stroke(255);
  ellipse(400, 400, 200, 200);
  
  
  fill(255);
  text(nf(second(),2), width/2, height/1.85); //text in the middle

  save("ChowdhuryMoenika_CLOCK3.png");
}