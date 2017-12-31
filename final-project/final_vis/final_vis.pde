float[] dataX = new float[200]; //creating the arrays for all of the data
float[] dataY = new float[200];
float[] flexX = new float[40];
float[] flexY = new float[40];

float xStart; //start and end
float yStart;


void setup() {
  size(1280, 720); //optimal for video production
  background(255); //changed this for ocarina
  
  //String[] numbers = loadStrings("claire-de-lune copy.txt");
  String[] numbers = loadStrings("ocarina.txt");

  dataX = float(split(numbers[0], ',')); //separates out the numbers from the commas
  dataY = float(split(numbers[0], ','));
  flexX = float(split(numbers[0], ','));
  flexY = float(split(numbers[0], ','));

  for (int i=0; i< dataX.length; i++) { //setting bounds
    dataX[i]=width/2;
    dataY[i]=height/2;
  }
  
  for (int i=0; i< flexX.length; i++) {
    flexX[i]=width/2+sin(i)*100;
    flexY[i]=height/2+cos(i)*100;
  }

  xStart = width/2;
  yStart = height/2;
  
}

void draw() { //loops inside this so it continues

  background(255);
  fill(0);
  strokeWeight(.2);
  
  dataX[dataX.length -1] = xStart;
  dataY[dataY.length -1] = yStart;

  for (int i= 0; i < dataX.length-1; i++) { //manipulating the data
    dataX[i] = dataX[i+1];
    dataY[i] = dataY[i+1];
  }

  for (int i = 0; i < dataX.length-1; i++) {
    float color1 = random(100, 200);
    float color2 = random(200, 255);
    float color3 = random(200, 255);
    
    float sz = map(i, 0, dataX.length, 0, random(5, 30));
    float intNoise = noise(frameCount,5); //introducing framecount to create fun visualizations

    fill(abs(color1 - (frameCount % 255)), abs(color2 - (frameCount%255)), abs(color3 - (frameCount%255)));
    stroke (color1, color2, color3, 50); //custom colors, changed for different songs
    strokeWeight(sz*.05); //alters the strokeweight
    ellipse(dataX[i+(int(intNoise) % dataX.length)], dataY[i], sz*sin(frameCount*.01)*3, sz*sin(frameCount*.01)*3);
    line(dataX[i], dataY[i], dataX[i+1], dataY[i+1]); //produces the lines

    fill(abs(color1 - (frameCount % 255)), abs(color2 - (frameCount%255)), abs(color3 - (frameCount%255)));
    stroke (color1, color2, color3, 100+(intNoise%155));
    triangle(dataX[i], dataY[i], sz, sz, sz, sz); //adding geometrical meters
    line(dataX[i], dataY[i], dataX[i+1], dataY[i+1]);

    if (dataX[dataX.length-1] > width || dataX[dataX.length-1] < 0 || dataY[dataY.length-1] <0 || dataY[dataY.length-1] > height) {
      xStart = flexX[frameCount%flexX.length];
      yStart = flexY[frameCount%flexY.length]; //changes where everything is placed
    } 
    
    else { 
  
    xStart += random (-10, 10); //randomly choosing where to start drawing
    yStart += random (-10, 10);
    
  }
  }
}