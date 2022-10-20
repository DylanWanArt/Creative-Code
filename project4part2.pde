import processing.pdf.*;  // Import PDF code

void setup() {
  beginRecord(PDF, "project4part1.pdf");
  background(144, 173, 219);
  size(792, 1224);  //11x72 and 17x72
  //size(600,850);
}


void draw() {
translate(0,0); //setting origin to zero 
fill(255);
  
  
  
  //white grid
  for (int x=20; x<=600; x+=20) {
    strokeWeight(0.2);
    stroke(255);
    line(x, 0, x, width);
  }

  for (int y=20; y<=400; y+=20) {
    strokeWeight(0.2);
    stroke(255);
    line(0, y, width, y);
  }



  //top two line chunks
  for (int x=0; x<= 500; x+=500) {
    for (int y=0; y<= 500; y+=50) {
      strokeWeight(1);
      stroke (5);
      line(0, x, width, y);
    }
  }


  //bottom two line chunks
  for (int y=500; y<= 1000; y+=50) {
    stroke (5);
    line(width, 500, 0, y);
  }
  for (int x=0; x<= width+50; x+=50) {
    stroke (5);
    line(0, 500, x, height);
  }
  
  
  
  translate(0,500);
  //circle(0,0,50);
  
  
  
  //idk how to make the circles consistent 
  for( float r=0; r<=90; r+=5){
  rotate(radians(r));
  circle(0,100,50);
  }
  
  for( float r=-50; r<=-20; r+=0.1){
  rotate(radians(r));
  circle(0,300,50);
  
  }
  
  for( float r=-50; r<=360; r++){
  rotate(radians(r));
  circle(0,600,50);
  
  }
 
 
 noFill();
 stroke(255);
 strokeWeight(5);
 circle(0,0,700);
 circle(0,0,1700);
 //circle(0,0,1840);
 circle(0,0,1950);
 circle(0,0,1990);
  
  endRecord();
  
}
