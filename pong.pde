PImage backgroundImage;
boolean gameOver=false;
int score=0;
int xposition=(int)random(width);
int yposition=(int)random(height);
int xballspeed=50;
int yballspeed=50;


void setup(){
  fullScreen();
  frameRate(60);

 backgroundImage = loadImage("shooting stars pong.jpg");

 
}
void draw(){
  if(!gameOver){
    
  image(backgroundImage,0, 0,width, height);
 //background(81, 81, 81);
 fill(255, 255, 255);
textSize(50);
text("Score: " + score, 40, 40);
 fill(220, 225, 0);
 stroke(0,0,0);
 ellipse(xposition, yposition,40,40);
 xposition+= xballspeed;
 if(xposition>width){
   xballspeed=-xballspeed;
 }
 if(xposition<=0){
   xballspeed=-xballspeed;
   }
    yposition+= yballspeed;
 if(intersects(xposition,yposition, mouseX, height-30, 250)){
   score++;
   yballspeed=-yballspeed;
   
 }
   if(yposition<=0){
   yballspeed=-yballspeed;
   }
   rect(mouseX, height-30, 250, 20);
  }
   if(yposition>height){
      image(backgroundImage,0, 0,width, height);
     gameOver=true;
     fill(0,255,232);
     textSize(40);
     text("Game over yeah!! you scored "+score, width/2, height/2);
     if(mousePressed){
     System.exit(0);
     }
   }
  
   
 

}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;
}