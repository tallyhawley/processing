void setup(){
  size(1500, 1000);
  noFill();
  strokeWeight(0.5);
}

void draw(){
  background(155);
  int elsize = 500;
  int elsize2 = 500;
  int elpos1 = 300;
  int elpos2 = 1200;
  for(int i=0;i<250;i++){
      if (i%2==1){
        stroke(150,0,0);
        ellipse(elpos1,height/2,elsize,elsize);
        elsize -= 2;  
      }
      else{
        stroke(0,0,0);
        ellipse(elpos1,height/2,elsize,elsize);
        elsize -= 2;
      } 
    }
    for(int i=0;i<250;i++){
      if(i%2==1){
        stroke(150,0,0);
        ellipse(elpos2, height/2, elsize2,elsize2);
        elsize2-=2;
      }
      else{
        stroke(0);
        ellipse(elpos2,height/2,elsize2,elsize2);
        elsize2 -=2;
      }
    }
  for(int i=0; i<500;i++){
    
     elpos1 += 20;
     elpos2 -= 20;
  }  
}
