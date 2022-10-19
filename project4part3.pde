import processing.pdf.*;  // Import PDF code

void setup() {
  beginRecord(PDF, "project4part1.pdf");
  background(63, 113, 86);
  size(792, 1224);  //11x72 and 17x72
  //size(600,850);
}


void draw() {


//small blue squares
  translate(0, 0);
  for (int y=15; y<=height+50; y+=80) {
    for (int x=15; x<=width+50; x+=80) {
      noStroke();
      fill(144, 173, 219);
      //rectMode(CENTER);
      rect(x, y, 10, 10);
    }
  }


  pushMatrix();
  // orange polygons
  //i dont understand how rotate affected the pattern
  for (int x=0; x<=width+50; x+=20) {
    translate(x, 450);
    rotate(-PI/2);
    noStroke();
    fill(234, 137, 80);
    quad(50, 0, 100, 0, 150, 50, 75, 50);
  }
  popMatrix();



  translate(0, 0);
  //white lines
  for (int x=700; x<=0; x+=10) {
    strokeWeight(1);
    stroke(255);
    line(700, 0, x, height); //counting the blue squares
  }


//blue circles
  translate(0, 0);
  for (int y=-20; y<=height+50; y+=80) {
    for (int x=500; x<=width+50; x+=80) {
      strokeWeight(0.2);
      stroke(255);
      fill(144, 173, 219, 100);
      //rectMode(CENTER);
      circle(x, y, 80);
    }
  }

  //white circles
  translate(0, 0);
  for (int y=-20; y<=height+50; y+=80) {
    for (int x=500; x<=width+50; x+=80) {
      strokeWeight(0.2);
      stroke(255);
      fill(255);
      //rectMode(CENTER);
      circle(x, y, 20);
    }
  }


  //black lines
  for (int y=500; y<=height; y+=50) {
    strokeWeight(2);
    stroke (5);
    line(width, height, 0, y);
  }

//black stroke circles and white focal point
  stroke(5);
  noFill();
  //fill(255,255,255,50);
  circle(220, 220, 200);
  circle(220, 220, 710);
  circle(745, 700, 710);
   circle(745, 700, 200);
  noStroke();
  fill(255);
  circle(220, 220, 50);
  fill(144, 173, 219);
  circle(220, 1020, 50);
  
  
   endRecord();
  
}
