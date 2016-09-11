import ddf.minim.*;     //at the very top of your sketch
  Minim minim;        //as a member variable
  AudioPlayer song;      //as a member variable
void setup(){
  size(600, 600);
  minim = new Minim(this);    //in the setup method
  song = minim.loadFile("sound.wav", 512);//in the setup method
  fill(255,219,171);
  noStroke();
    ellipse(300,300,550,550);
  fill(235, 78, 26);
    ellipse(300,300,500,500);
  fill(255,214,92);
    ellipse(300,300,475,475);
}

void draw(){
  PImage pepperoni = loadImage("nickcage.png"); 
  PImage yoshi = loadImage("yoshi.png");
   yoshi.resize( 
   pepperoni.resize(50,50);
   if(mousePressed){
     image(pepperoni, mouseX-25, mouseY-25);
     song.rewind();
     song.play();
   }
   else if(mousePressed && (mouseButton == RIGHT)){
     
}
