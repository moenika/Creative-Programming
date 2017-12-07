void setup () {
size(800,800);
background(0);
}

void draw() {
float radius = mouseX;

stroke(255, 20);
line(mouseX, mouseY, 0, 0);
line(mouseX, mouseY, width, height);
  
stroke(191, 205, 229, 80);
strokeWeight(0.5);

if (radius > mouseY) {
  stroke(0, random(255), random(255), 50);
  rect(mouseX, mouseY, radius/10, radius/10);
} else {
  noFill();
  stroke(random(255), 0, random(255), 70);
  rect(mouseX, mouseY, radius, radius);
  } 
  
}
//

void mousePressed() {
background(random(255), random(150), random(255));
  }