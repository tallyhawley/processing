void setup(){
// canvas size
  size(666,666);
}

void draw(){
// preeetty colour
  background(218,196,255);
// hey yo let ur mother know make a little conversation
  if(mousePressed){
    if(mouseX > 510 || mouseY > 510){  
    int newx = mouseX-400;
    int newy = mouseY-400;
    fill(newy, newx, newy);
  }else if(mouseX > 255 || mouseY > 255){
    int x = mouseX-230;
    int y = mouseY-230;
    fill(x,y,x);
  }else{
    fill(mouseX,mouseY,mouseX);}
  ellipse(mouseY, mouseX, 20, 20);
  ellipse(mouseX, mouseY, 20, 20);
  arc(333, 333, 125, 125, 0, PI-QUARTER_PI, CHORD);
  text("he is suffering", 200, 500);
  text("poor smol boyo", 300, 100);
  text("why do you do this to him", 100, 236);
}
  else {
  if(mouseX > 510 || mouseY > 510){  
    int newx = mouseX-400;
    int newy = mouseY-400;
    fill(newy, newx, newy);
  }else if(mouseX > 255 || mouseY > 255){
    int x = mouseX-230;
    int y = mouseY-230;
    fill(x,y,x);
  }else{
    fill(mouseX,mouseY,mouseX);}
  ellipse(310, 250, 20, 20);
  ellipse(360, 265, 20, 20);
  arc(333, 333, 125, 125, 0, PI+QUARTER_PI, CHORD);
  text("happy boyo", 200,500);
}
  fill(204,0,0);
  text(":^) isaac :^)",600, 633);
}
