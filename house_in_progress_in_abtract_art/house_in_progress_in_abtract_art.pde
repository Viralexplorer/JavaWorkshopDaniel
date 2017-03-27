void setup(){
fill(246,255,0);
ellipse(80,40,100,90);
fill(0,255,78);
ellipse(100,100,120,320);
size(1000,1000);
fill(0,255,219);
ellipse(60,80,50,40);
fill(134,84,16);
rect(102,159,70,80);
fill(255,0,0);
triangle(102,158,172,160,137,113);
}
void draw(){
if(mousePressed){
  print(mouseX);
  print(" ");
  print(mouseY);
  println();
}
}