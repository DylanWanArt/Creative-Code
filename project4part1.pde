/*
Dylan Wan 

Abstract patterns based on "No Cure" by Zoe's Shanghai. The song is smooth and jazzy, 
represented by the purely geometric shapes where I attempted to make them intersect 
satisfying ways.

*/


import processing.pdf.*;  // Import PDF code




//11x17 inches

void setup() {
  beginRecord(PDF, "project4part1.pdf");
  background(220, 238, 240);
  size(792, 1224);  //11x72 and 17x72
  //size(600,850);
}

void draw() {



  blendMode(NORMAL);

  //white left circles
  for (int y=50; y<=height/3*2; y+=300) {
    fill(255, 255, 255, 200);
    noStroke();
    //stroke(94, 29, 180);
    circle(0, y, 300);
  }

 //bttm right circles
  for (int y=650; y<=height+500; y+=300) {
    fill(194, 197, 211, 200);
    noStroke();
    //stroke(94, 29, 180);
    circle(width, y, 300);
  }


  //background grid fill
  for (int y=0; y<=height; y=y+50) {
    for (int x=0; x<=width-200; x=x+50) {
      strokeWeight(0.2);
      //stroke(94, 29, 180);
      // for (int a=0; a<=width; a-=20){   //idk abt this
      fill( 144, 173, 219, 100);
      circle(x, y, 50);
    }
  }





  //turqoise circle overlay
  for (int x=0; x<=width+50; x=x+50) {
    fill( 100, 206, 184, 80);
    noStroke();
    //stroke(94, 29, 180);
    circle(x, 500, 50);
  }

  //orange circle overlay
  for (int y=0; y<=height; y=y+50) {
    fill( 242, 192, 130, 80);
    noStroke();
    //stroke(94, 29, 180);
    circle(300, y, 50);
  }


  strokeWeight(20);
  blendMode(BLEND);
  fill(234, 124, 80, 100);
  circle(width-250, 250, 500);
  
  
  //small orange circle
  strokeWeight(0);
  blendMode(BLEND);
  fill(234, 124, 80, 100);
  circle(365, 516, 140);


  //background grid stroke
  for (int y=0; y<=height; y=y+50) {
    for (int x=0; x<=width+50; x=x+50) {
      strokeWeight(0.2);
      stroke(94, 29, 180, 255);
      noFill();
      circle(x, y, 50);
    }
  }


  //bottom right target
  noFill();
  for (int d=1510; d>0; d-=60) {
    //stroke(109,119,180);
    stroke(242, 192, 130);
    strokeWeight(5);
    ellipse(width, height, d,d);
  }




  //if(key=='s'||key=='S'){
  endRecord();
}
