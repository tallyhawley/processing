import ddf.minim.*;     //at the very top of your sketch
PImage pictureOfRecord;
Minim minim;        //as a member variable
AudioPlayer song;      //as a member variable

void setup(){
  pictureOfRecord= loadImage("record.png");
  size(pictureOfRecord.width, pictureOfRecord.height);
  minim = new Minim(this);    //in the setup method
song = minim.loadFile("killerqueen.mp3", 512);//in the setup method
}

void rotateImage(PImage image, int amountToRotate) {
      translate(width/2, height/2);
      rotate(amountToRotate*TWO_PI/360);                              
      translate(-image.width/2, -image.height/2);
}

int amRot = 2;

void draw(){
  background(200,200,200);
  if (mousePressed){
    rotateImage(pictureOfRecord, amRot);
    amRot += 2;
    if (mouseY>=475){
      song.mute();
    }else{
      song.unmute();
    }
    float volume = (500-mouseY)/50;
    song.setGain(volume);
    song.play();
  }
  else{
    rotateImage(pictureOfRecord, amRot);
    song.pause();
  }  
  image(pictureOfRecord, 0, 0);
}
