void setup() {
  size(1200, 700);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
 
}
void draw() {
  background(0);
  fill(255);
  //all scale
  for(int y = 200; y <770; y+=70)
    for(int x = 0; x <1100; x+=60)
      scale(x,y);
  //black scale
  fill(255,0,0);
  noStroke();
  
  for(int by = 200; by < 770; by+=140){
  // row 1
    int bx = -300;
    int bxx = -180;
    int bxxx = -120;
    while(bxxx <1000){
      bx = bx + 300;
      bxx = bxx + 300;
      bxxx = bxxx + 300;
      scale(bx,by);
      scale(bxx,by);
      scale(bxxx,by);
    }
    
 //row 2 
   int bxt = -150;
   
   while (bxt < 1000){
     bxt = bxt + 300;
     scale(bxt, by+35);
     
   }
  }
      
    
      
      
 fill(#E58296);
 rect(0,0,1200,200);
 rect(800,0,500,700);
 
    //outline of bag and the flap thingy    
  stroke(0);
  strokeWeight(5);
  line(0,200,800,200);
  line(800,200,800,700);
  line(0,200,0,700);
  line(0,700,800,700);
  strokeWeight(20);
   line(0,515,793,515);
  
   //button thingy
  noStroke();
  fill(#FAD456);
  rect(325,490,150,50);
  
  //chain
  noFill();
  stroke(#FAD456);
  strokeWeight(10);
  for(int ex = 0; ex<850; ex+=30)
  ellipse(ex,180,40,30);
 
  //tilt chain part
  translate(850,200);
  rotate(-PI/30);
  for (int ty = 0; ty <450; ty+=30)
      ellipse(0,ty,30,40);
  rotate(PI/30);
  translate(-850,-200);
    for (int tty = 200; tty <670; tty+=30)
      ellipse(820,tty,30,40);
      
  translate(910,640);
  rotate(-PI/3);
  for (int ry = 0; ry<120; ry += 30)
  ellipse(0,ry,30,40);
  rotate(PI/3);
  translate(-910,-640);
  
      
    stroke(#E8C550);
    for (int tx = 930; tx <1170; tx+=30)
      ellipse(tx,680,40,30); 
    stroke(#FAD456);  
    for (int tx = 830; tx <1170; tx+=30)
      ellipse(tx,680,40,30);
      
  
  
  //highlight
  stroke(255);
  strokeWeight(10);
  line(340,500,380,500);
  line ( 400,500,410,500);
  
}
void scale(int x, int y) {
beginShape();
curveVertex(x,y-35);
curveVertex(x,y-35);
curveVertex(x+30,y);
curveVertex(x,y+35);
curveVertex(x,y+35);
endShape();
beginShape();
curveVertex(x,y-35);
curveVertex(x,y-35);
curveVertex(x-30,y);
curveVertex(x,y+35);
curveVertex(x,y+35);
endShape();

}
