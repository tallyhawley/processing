int elpos1 = 300;
int elpos2 = 1200;
int elpos3 = 200;
int elpos4 = 800;
int elspeed = 15;
int elspeed2 = 10;
void setup(){
  size(1500, 1000);
  noFill();
  strokeWeight(0.5);
}

void draw(){
  background(155);
  int elsize = 500;
  int elsize2 = 500;
  int elsize3 = 300;
  int elsize4 = 300;
  for(int i=0;i<100;i++){
    stroke(0,0,0);
    ellipse(elpos1,height/2,elsize,elsize);
    elsize -= 5; 
  }
  for(int i=0;i<100;i++){;
    ellipse(elpos2,height/2,elsize2,elsize2);
    elsize2-=5; 
  }
  for(int i=0;i<100;i++){;
    ellipse(width/2,elpos3,elsize3,elsize3);
    elsize3-=3; 
  }
  for(int i=0;i<100;i++){;
    ellipse(width/2,elpos4,elsize4,elsize4);
    elsize4-=3; 
  }
  elpos1 = elpos1+elspeed;
  elpos2 = elpos2-elspeed;
  elpos3 = elpos3+elspeed2;
  elpos4 = elpos4-elspeed2;
  if(elpos1 >= 1250 || elpos2 <= 250 || elpos1 <= 250 || elpos2 >= 1250){
   elspeed = -elspeed;
  }
//  else if(elpos1 <= 250 || elpos2 >= 1250){
//   elspeed = -elspeed;
//  }
  if(elpos3 >= 850 || elpos4 <= 150 || elpos3 <=150 || elpos4 >= 850){
   elspeed2 = -elspeed2; 
  }
}
