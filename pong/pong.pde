  import ddf.minim.*; 
  int ballX = 300;
  int ballY = 450;
  int ballSpeedX = 10;
  int ballSpeedY = 7;
  int paddleY = 500;
  int paddleLength = 100;
  Minim minim;
  AudioSample sound;

void setup(){
  size(600, 600);
  minim = new Minim (this);
  sound = minim.loadSample("loss.wav");
  fill(74, 119, 242);
  stroke(0,0,0);
}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY-40 && ballX > paddleX && ballX < paddleX + paddleLength)
  return true;
else 
  return false;
}



void draw(){
  background(218, 198, 255);
  ellipse(ballX, ballY, 40, 40);
  int paddleX = mouseX;
  rect(paddleX, paddleY, paddleLength, 20);
  ballX = ballX + ballSpeedX;
  ballY = ballY - ballSpeedY;
  


  if (ballX >= 580){
    ballSpeedX = -ballSpeedX;
  }else if(ballX <= 20){
    ballSpeedX = -ballSpeedX;
  }
  if (ballY <= 20){
    ballSpeedY = -ballSpeedY;
  }
  else if (intersects(ballX, ballY, paddleX, paddleY, paddleLength) == true){
    ballSpeedY = -ballSpeedY;
  }
  else if (ballY >= 580){
    sound.trigger();
    println ("you failed");
    textSize(72);
    text("you lose", 150, 200);
    ballSpeedY = 0;
    ballSpeedX = 0;
    ballY = 579;
    fill(218,198,255);
    stroke(218,198,255);
    delay(3000);
    exit();
  }
   

}

