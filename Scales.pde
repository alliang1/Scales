void setup() {
  size(1200, 700);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
 
}
void draw() {
  
  for(int y = 200; y <770; y+=70)
    for(int x = 0; x <1100; x+=60)
      scale(x,y);
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
