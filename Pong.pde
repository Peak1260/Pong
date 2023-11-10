PImage bg;
float ballX=40;
float ballY=30;
float deltaX=5;
float deltaY=5;
float paddleX;
float paddleY=100;
float paddlex;
float paddley=100;
int CountL=0;
int CountR=0;
PFont font;
void setup(){
  size(800,600);
  font=loadFont("Arial-BoldMT-48.vlw");
  imageMode(CENTER);
  textAlign(CENTER);
  bg=loadImage("stars.gif");
  bg.resize(width,height);
  paddleX=width-50;
  paddlex=width-780;
}
void draw(){
  noCursor();
  background(bg);
  strokeWeight(5);
  stroke(255,155,0);
  fill(0,255,255);
  textFont(font);
  text("Pong",400, 50);
  line(width/2,0,width/2,600);
  fill(random(255));
  ellipse(ballX,ballY,30,30);
  ballX=ballX+deltaX;
  ballY=ballY+deltaY;
    if(ballX>=paddleX && ballY>=paddleY && ballY<=paddleY+80){
      deltaX=-deltaX;
    }
    if(ballX<=paddlex && ballY>=paddley && ballY<=paddley+80){
      deltaX=-deltaX;
    }
    if(ballY>height||ballY<0){
      deltaY=-deltaY;
    }
    if(ballX>width||ballX<0){
      deltaX=-deltaX;
    }
  fill(255,0,0);
  text(CountR,600,50);
  rect(paddleX,paddleY,30,80);
    if(paddleY<0){
      paddleY=0;
    }
    if(paddleY>520){
      paddleY=520;
    }
  fill(0,0,255);
  text(CountL,200,50);
  rect(paddlex,paddley,30,80);
    if(paddley<0){
      paddley=0;
    }
    if(paddley>520){
      paddley=520;
    }
    if(ballX>=800){
      CountL++;
      ballX=width/2;
      ballY=height/2;
    }
    if(ballX<=0){
      CountR++;
      ballX=width/2;
      ballY=height/2;
    }
}
void keyPressed(){
  if(keyCode==UP)
  paddleY=paddleY-40;
  if(keyCode==DOWN)
  paddleY=paddleY+40;
  if(key=='w')
  paddley=paddley-40;
  if(key=='s')
  paddley=paddley+40;
}


  
