PFrase[] frase1 = new PFrase[5];
PFrase[] frase2 = new PFrase[2];
PImage img;
int l =255;

PFont font;

void setup(){
  img = loadImage("brain.png");
  font = loadFont("PartyLetPlain-160.vlw");
  //font = createFont("Times", 32);;
  textSize(100);
  size(displayWidth, displayHeight);
  
  frase1[0] = new PFrase("2340",random(width),random(height),font);
  frase1[1] = new PFrase("2340",random(width),random(height),font);  
  frase1[2] = new PFrase("2340",random(width),random(height),font);
  frase1[3] = new PFrase("2340",random(width),random(height),font);
  frase1[4] = new PFrase("2340",random(width),random(height),font);  
  
  frase2[0] = new PFrase("2340",400,400,font);
  frase2[1] = new PFrase("2340",400,450,font);
  rectMode(CENTER);
  imageMode(CENTER);
}


void draw(){
  frameRate(30);
  background(2,2,2);
  //fill(0,30);
  //rect(0,0,width,height);
  smooth(8);
  strokeWeight(12);
  stroke(232,100);
  fill(240,226,5,170);
  if(!frase1[0].mode){
    fill(251,255);
  }
  for(int i=0; i<5;i++){
    frase1[i].disperseOreturn();
    frase1[i].checkAttractor(width/2+10,height/2-30,300);
    frase1[i].display();
  }
  fill(253,8,31,176);
  if(!frase2[0].mode){
    fill(255,255);
  }
    for(int i=0; i<2;i++){
    frase2[i].disperseOreturn();
    frase2[i].display();
    frase1[i].checkAttractor(width/2+10,height/2-30,300);
    //frase2[i].checkAttractor(400,600,150);
  }
  //saveFrame("frames/####.tif");
  textAlign(CENTER);
  pushMatrix();
  translate(width/2,height/2);
  scale(0.5);
  tint(255, l, l, 126);
  image(img, 0, 0);
  popMatrix();
  l--;
}


void keyPressed() {

  if(key=='a'){
    frase1[0].setMode(false);
    frase1[1].setMode(false); 
    frase1[2].setMode(false); 
    frase1[3].setMode(false);
    frase1[4].setMode(false);  
  } else if(key == 's'){
    frase2[0].setMode(false);
    frase2[1].setMode(false);
  } 
}

void keyReleased() {
    frase1[0].setMode(true);
    frase1[0].randomSpeeds();
    frase1[1].setMode(true);
    frase1[1].randomSpeeds();
    frase1[2].setMode(true);
    frase1[2].randomSpeeds();
    frase1[3].setMode(true);
    frase1[3].randomSpeeds();
    frase1[4].setMode(true);
    frase1[4].randomSpeeds();
    
    frase2[0].setMode(true);
    frase2[0].randomSpeeds();
    frase2[1].setMode(true);
    frase2[1].randomSpeeds();
}