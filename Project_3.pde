/*
Dylan Wan 
Continuing with the theme of cycles from Assignment 2, I decided to do the color of maple leaves 
throughout the seasons.
 
 Instructions 
 -mouse click to add leaves
 -1 click to set Spring theme
 -2 click to set Summer theme 
 -3 click to set Fall theme 
 -4 click to set Winter theme 
 -s click to save canvas 


 
 
 brainstorm:
 -must use fullScreen()
 -brush to give trees leaves throughout the season
 -create multiple leaves with diff positions, each one shown will be randomized,
 or position randomized
 -pressing 1,2,3,4 will change the background: spring, summer fall, winter
 -maybe add falling snow to winter, and shriveled leaves
 -find way to make them darker when layered
 -mousePressed activiates special brush customized for every season, such as spacing
 between leaves (possibly manipulate fps to space out leaves), size, and color
 -space will delete all the leaves
 
 command q to quit fullscreen
 
 */


int season = 1;

//colors for background
color springGround= color(159, 214, 143);
color springSky= color(202, 245, 247);
color summerGround= color(57, 134, 70);
color summerSky= color(139, 223, 255);
color fallGround= color(170, 95, 14);
color fallSky= color(211, 198, 171);
color winterGround= color(230, 237, 237);
color winterSky= color(178, 196, 198);


//colors for leaves
color springLeafc1= color(200,240,145);
color springLeafc2= color(130,188,49);
color springLeafInter= lerpColor(springLeafc1,springLeafc2,random(0.1,0.5));

color summerLeafc1= color(133,203,99);
color summerLeafc2= color(98,175,60);
color summerLeafInter= lerpColor(springLeafc1,springLeafc2,random(0.1,0.6));

color fallLeafc1= color(216,184,94);
color fallLeafc2= color(129,89,36);
color fallLeafInter= lerpColor(springLeafc1,springLeafc2,random(0.1,0.6));

color winterLeafc1= color(93,66,32);
color winterLeafc2= color(70,57,37);
color winterLeafInter= lerpColor(springLeafc1,springLeafc2,random(0.1,0.6));




//declaring tree/leaf variables
PShape tree;
PShape fallLeaf;
PShape fallLeaf1;
PShape fallLeaf2;
PShape fallLeaf3;



void setup() {
  //fullScreen();
  size(1440,845);


//PShape fall leaf
  noStroke();
  fallLeaf= createShape(GROUP);
  fallLeaf1= createShape(TRIANGLE,mouseX-5,mouseY,mouseX,mouseY+20,mouseX+5,mouseY);
  fallLeaf2= createShape(TRIANGLE,mouseX,mouseY+5,mouseX-10,mouseY+17,mouseX-5,mouseY);
  fallLeaf3= createShape(TRIANGLE,mouseX,mouseY+5,mouseX+10,mouseY+17,mouseX+5,mouseY);
  fallLeaf.addChild(fallLeaf1);
  fallLeaf.addChild(fallLeaf2);
  fallLeaf.addChild(fallLeaf3);


  //PShape tree and grouping them using createShape(GROUP)
  tree= createShape(GROUP);
  
  fill(67, 56, 47);
  noStroke();
  
  //parent shapes and naming each individually
  PShape root1 = createShape(TRIANGLE, 565, 683, 678, 594, 710, 665);
  PShape root2 = createShape(TRIANGLE, 718, 656, 746, 609, 828, 686);
  PShape trunk1= createShape(QUAD, 663, 668, 700, 489, 769, 503, 732, 682);
  PShape trunk2= createShape(QUAD, 699, 512, 684, 397, 754, 389, 769, 504);
  //left side branches
  //left left
  PShape branch1= createShape(TRIANGLE, 690, 428, 727, 393, 610, 314);
  PShape branch2= createShape(TRIANGLE, 670, 396, 672, 358, 419, 362);
  PShape branch3= createShape(TRIANGLE, 420, 420, 515, 361, 520, 369);
  PShape branch4=createShape(TRIANGLE, 559, 380, 496, 288, 577, 366);
  PShape branch5=createShape(TRIANGLE, 528, 333, 533, 324, 433, 274);
  //left right
  PShape branch6= createShape(TRIANGLE, 690, 387, 672, 373, 737, 314);
  PShape branch7= createShape(TRIANGLE, 696, 350, 711, 354, 728, 244);
  //left center
  PShape branch8= createShape(TRIANGLE, 632, 345, 661, 349, 666, 212);
  PShape branch9= createShape(TRIANGLE, 651, 271, 732, 213, 663, 285);
  PShape branch10= createShape(TRIANGLE, 704, 233, 708, 184, 713, 233);
  PShape branch11= createShape(TRIANGLE, 642, 330, 660, 316, 534, 186);
  PShape branch12= createShape(TRIANGLE, 610, 283, 499, 259, 612, 268);
  PShape branch13= createShape(TRIANGLE, 600, 254, 583, 251, 613, 145);
  PShape branch14= createShape(TRIANGLE, 603, 221, 595, 211, 636, 186);
  PShape branch15= createShape(TRIANGLE, 604, 183, 609, 179, 581, 141);
  //right side branches
  PShape branch16= createShape(TRIANGLE, 726, 392, 754, 426, 889, 293);
  //right left
  PShape branch17= createShape(TRIANGLE, 756, 378, 788, 374, 749, 201);
  PShape branch18= createShape(TRIANGLE, 755, 310, 864, 196, 771, 324);
  PShape branch19= createShape(TRIANGLE, 821, 256, 819, 245, 882, 241);
  PShape branch20= createShape(TRIANGLE, 765, 296, 805, 147, 784, 300);
  PShape branch21= createShape(TRIANGLE, 785, 221, 765, 178, 796, 214);
  //right right
  PShape branch22= createShape(TRIANGLE, 774, 406, 780, 387, 838, 414);
  PShape branch23= createShape(TRIANGLE, 811, 369, 804, 345, 983, 307);
  PShape branch24= createShape(TRIANGLE, 881, 342, 885, 328, 1031, 371);
  PShape branch25= createShape(TRIANGLE, 924, 323, 952, 267, 932, 326);


  //adding all the shapes into a group
  tree.addChild(root1);
  tree.addChild(root2);
  tree.addChild(trunk1);
  tree.addChild(trunk2);
  tree.addChild(branch1);
  tree.addChild(branch2);
  tree.addChild(branch3);
  tree.addChild(branch4);
  tree.addChild(branch5);
  tree.addChild(branch6);
  tree.addChild(branch7);
  tree.addChild(branch8);
  tree.addChild(branch9);
  tree.addChild(branch10);
  tree.addChild(branch11);
  tree.addChild(branch12);
  tree.addChild(branch13);
  tree.addChild(branch14);
  tree.addChild(branch15);
  tree.addChild(branch16);
  tree.addChild(branch17);
  tree.addChild(branch18);
  tree.addChild(branch19);
  tree.addChild(branch20);
  tree.addChild(branch21);
  tree.addChild(branch22);
  tree.addChild(branch23);
  tree.addChild(branch24);
  tree.addChild(branch25);
  
  
  
  
  
  
//default settings to Spring for first view
     if (season==1) {
    //change background to spring
    //change brush to spring

    background(springSky);
    
    
    //background foliage 
    fill(200,234,168);
    ellipse(100,550,500,300);
    ellipse(1450,370,400,300);
    ellipse(1400,550,600,400);
    fill(#97BC8B);
    triangle(100,800,200,50,300,800);
    triangle(250,800,300,200,350,800);
    fill(springGround);
    rect(0, height/3*2, width, height);
    shape(tree);
     }
}







void keyPressed() {
   //save frame 
if (key=='s'){
       saveFrame("dylan-####.png");
     }
  
  if (key=='1') {
    season=1;
    if (season==1) {
    //change background to spring
    //change brush to spring
    background(springSky);
    
    //background foliage 
    fill(200,234,168);
    ellipse(100,550,500,300);
    ellipse(1450,370,400,300);
    ellipse(1400,550,600,400);
    fill(#97BC8B);
    triangle(100,800,200,50,300,800);
    triangle(250,800,300,200,350,800);
    
    
    
    //foreground
    fill(springGround);
    rect(0, height/3*2, width, height);
    shape(tree);    
    }
  } 
  else if (key=='2') {
    season=2;
     if (season ==2) {

    background(summerSky);
    
     //background foliage 
    fill(#C4AAD8);
    ellipse(100,550,500,300);
    ellipse(1450,370,400,300);
    ellipse(1400,550,600,400);
    fill(#5FAF5A);
    triangle(100,800,200,50,300,800);
    triangle(250,800,300,200,350,800);
    
    fill(summerGround);
    rect(0, height/3*2, width, height);
    shape(tree);
     }
 } 
 else if (key=='3') {
    season=3;
    if (season ==3) {

    background(fallSky);
    
     //background foliage 
    fill(#D3A253);
    ellipse(100,550,500,300);
    ellipse(1450,370,400,300);
    ellipse(1400,550,600,400);
    fill(#7E5D28);
    triangle(100,800,200,50,300,800);
    triangle(250,800,300,200,350,800);
    
    fill(fallGround);
    rect(0, height/3*2, width, height);
    shape(tree);
    }
 } 
else if (key=='4') {
    season=4;

    background(winterSky);
    
     //background foliage 
    fill(#F5F5F5);
    ellipse(100,550,500,300);
    ellipse(1450,370,400,300);
    ellipse(1400,550,600,400);
    fill(#FFFFFF);
    triangle(100,800,200,50,300,800);
    triangle(250,800,300,200,350,800);
    
    fill(winterGround);
    rect(0, height/3*2, width, height);
    shape(tree);
    }
    
    
}
  

void draw() {
  

  if(mousePressed && season==1){ 
      //changes the origin for leaves to the mouse instead of top left
     springLeafInter= lerpColor(springLeafc1, springLeafc2, random(0.1, 0.5));
     fallLeaf1.setFill(springLeafInter);
     fallLeaf2.setFill(springLeafInter);
     fallLeaf3.setFill(springLeafInter);
     translate(mouseX,mouseY);
     scale(random(0.5,1.5));
     shape (fallLeaf);
     fallLeaf.rotate(random(-0.1,0.1));
    
    
     }
     
     else if (mousePressed && season==2){
         //changes the origin for leaves to the mouse instead of top left
     summerLeafInter= lerpColor(summerLeafc1, summerLeafc2, random(0.1, 0.5));
     fallLeaf1.setFill(summerLeafInter);
     fallLeaf2.setFill(summerLeafInter);
     fallLeaf3.setFill(summerLeafInter);
     translate(mouseX,mouseY);
     scale(random(1.5,2.5));
     

     shape (fallLeaf);
     fallLeaf.rotate(random(-0.1,0.1));
       
     }
     else if (mousePressed && season==3){
       //changes the origin for leaves to the mouse instead of top left
     fallLeafInter= lerpColor(fallLeafc1, fallLeafc2, random(0.1, 0.5));
     fallLeaf1.setFill(fallLeafInter);
     fallLeaf2.setFill(fallLeafInter);
     fallLeaf3.setFill(fallLeafInter);
     translate(mouseX,mouseY);
     scale(random(1.5,2));
    
     shape(fallLeaf);
     fallLeaf.rotate(random(-0.1,0.1));

     }
     else if (mousePressed && season==4){
       //changes the origin for leaves to the mouse instead of top left
     winterLeafInter= lerpColor(winterLeafc1, winterLeafc2, random(0.1, 0.5));
     fallLeaf1.setFill(winterLeafInter);
     fallLeaf2.setFill(winterLeafInter);
     fallLeaf3.setFill(winterLeafInter);
     translate(mouseX,mouseY);
     scale(random(0.5,1.5));
     
     fallLeaf.setFill(color(winterLeafInter));
     shape (fallLeaf);
     fallLeaf.rotate(random(-1,1));

     }
     
}
