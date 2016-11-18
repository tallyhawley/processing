int hopDist = 30;
int xpos = 200;
int ypos = 380;
Car c1 = new Car(15,335,40,2);
Car c2 = new Car(385,275,40,4);
Car c3 = new Car(15,245,40,5);
Car c4 = new Car(385,185,40,3);

void setup(){
  size(400,400);
}

void draw(){
  background(0,0,255);
  noStroke();
  fill(0,255,0);
  ellipse(xpos,ypos,28,28);
  stayHere();
  c1.moveRight();
  c1.display();
  c2.moveLeft();
  c2.display();
  c3.moveRight();
  c3.display();
  c4.moveLeft();
  c4.display();
  if(intersects(c1)){
     xpos = 200;
     ypos = 380; 
  }
  if(intersects(c2)){
     xpos = 200;
     ypos = 380; 
  }
  if(intersects(c3)){
     xpos = 200;
     ypos = 380; 
  }
  if(intersects(c4)){
     xpos = 200;
     ypos = 380; 
  }
  if(ypos<=150){
     text("you won :^)", 50, 100);
     textSize(50); 
  }
}

void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
        ypos -= hopDist;
      }
      else if(keyCode == DOWN)
      {
        ypos += hopDist; 
      }
      else if(keyCode == RIGHT)
      {
        xpos += hopDist;
      }
      else if(keyCode == LEFT)
      {
        xpos -= hopDist;
      }
   }
}

void stayHere()
{
   if(xpos >=385){
      xpos = 385; 
   }
   else if(xpos <= 15){
     xpos = 15;
   }
   if(ypos >= 385){
      ypos = 380; 
   }
   else if(ypos <= 15){
     ypos = 20;  
   }
}

boolean intersects(Car car) {
if ((ypos > car.getY() && ypos < car.getY()+28) && (xpos > car.getX() && xpos < car.getX()+car.getSize()))
          return true;
    else 
        return false;
}


class Car{
   private int xpos;
   private int ypos;
   private int size;
   private int speed;
  
   Car(int x, int y, int size, int speed){
      this.xpos = x;
      this.ypos =y;
      this.size = size;
      this.speed = speed;
   } 
   
   void display() 
  {
    fill(0,255,0);
    rect(this.xpos,this.ypos,this.size, 28);
  }
   
   void moveRight(){
      this.xpos += this.speed;
     if(this.xpos >= 380+this.size){
        this.xpos = -20;
     } 
   }
   
   void moveLeft(){
     this.xpos -= this.speed;
     if(this.xpos <= 20-this.size){
       this.xpos = 420;
     }
   }
   
   int getX(){
      return this.xpos; 
   }
   int getY(){
      return this.ypos; 
   }
   int getSize(){
     return this.size;
   }
   
}
