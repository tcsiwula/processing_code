// File: interactive_game
// Student: Tim Siwula
// Professor: Yoon Chung Han
// Class: Art 385 Interaction Design 
// Assignment: Midterm Interactive Design
// Features: music, dynamic face and music




import ddf.minim.*;

// sound 1 of 2
AudioSnippet sound, defaultMusic, jumpSound;
Minim minim;

// import picture
PImage pic, funny, mad, sad, surprised, tmp;
//text on screen


boolean pressed;
float startX;
float startY;
int purple = #5D5C84; 
int lightPink = #D48288;
int backgroundColor = #A09F9A;
int black = #352F33;
int darkPink = #D471B1;
int square1TopX = 100;
int square1TopY = 170;
int square1BottomX = 188;
int square1BottomY = 316;
int square2TopX = 236;
int square2TopY = 185;
int square2BottomX = 393;
int square2BottomY = 315;
int square3TopX = 448;
int square3TopY = 167;
int square3BottomX = 568;
int square3BottomY = 314;
int square4TopX = 600;
int square4TopY = 122;
int square4BottomX = 730;
int square4BottomY = 312; 
int square5TopX = 162;
int square5TopY = 231;
int square5BottomX = 296;
int square5BottomY = 418;
int square6TopX = 360;
int square6TopY = 231;
int square6BottomX = 507;
int square6BottomY = 352;
int square7TopX = 541;
int square7TopY = 232;
int square7BottomX = 692;
int square7BottomY = 406;

int blue = #0266C8;
int red = #F90101;
int yellow = #F2B50F;
int green = #00933B;


String tmpImage;
void setup() 
{
  size(displayWidth, displayHeight);
  smooth();
  //load pic 2 of 3
  pic = loadImage("Character-illustrator.png");
  funny = loadImage("funny.png");
  mad = loadImage("mad.png");
  sad = loadImage("sad.png");
  tmpImage = "deafault.png"; 

  tmp = loadImage(tmpImage); 

  rectMode(CORNERS);
  image(pic, startX, startY, 400, 400);
  // sound 2 of 3
  // sound 1 of 2
  minim = new Minim(this);
  sound = minim.loadSnippet("Wolves Howling.wav");
  defaultMusic = minim.loadSnippet("kokiri-forest.mp3");
  jumpSound = minim.loadSnippet("Mario_Jumping.mp3");
  //P3D
  frameRate(120);
  startX = displayWidth/2-800;
  startY = displayHeight/2 -40;
  defaultMusic.loop();
  tmpImage = "surprised.png"; 
  //tmp = loadImage(tmpImage); 
  image(tmp, startX, startY, 400, 400);
  //physics = new Physics(level, 0, 0, 0);
}

void draw()
{
  //image(pic, startX, startY, 400, 400);

  tmp = loadImage(tmpImage);

  background(135, 206, 250);
  //image(tmp, startX, startY, 400, 400);
  // load character to screen
  //image(pic, mouseX, mouseY, 400, 400); mouse location version
  //image(pic, displayWidth/2, displayHeight/2-40, 400, 400);  // fixed starting position.  change x,y to variables, default like so.

  //square1
  fill(blue, displayWidth/1);
  noStroke();
  rect(square1TopX, square1TopY, square1BottomX, square1BottomY);

  //square2 
  fill(  backgroundColor);
  fill(red, displayWidth/2);
  noStroke();
  rect(square2TopX, square2TopY, square2BottomX, square2BottomY);

  //square3
  fill(yellow, displayWidth/3);
  noStroke();
  rect(square3TopX, square3TopY, square3BottomX, square3BottomY);

  //square4
  fill(green, displayWidth/4);
  noStroke();
  rect(square4TopX, square4TopY, square4BottomX, square4BottomY);




  if ( (mouseX>square1TopX)&&(mouseY>square1TopY)&&(mouseX<square1BottomX)&&(mouseY<square1BottomY) )
  {
    tmpImage = "surprised.png"; 
    //tmp = loadImage(tmpImage); 
    image(tmp, startX, startY, 400, 400);
  } else 
    if ( (mouseX>square2TopX)&&(mouseY>square2TopY)&&(mouseX<square2BottomX)&&(mouseY<square2BottomY) )
  {
    tmpImage = "sad.png"; 
    //tmp = loadImage(tmpImage); 
    image(tmp, startX, startY, 400, 400);
  } else 
    if ( (mouseX>square3TopX)&&(mouseY>square3TopY)&&(mouseX<square3BottomX)&&(mouseY<square3BottomY) )
  {
    tmpImage = "mad.png"; 
    //tmp = loadImage(tmpImage); 
    image(tmp, startX, startY, 400, 400);
  } else 
    if ( (mouseX>square4TopX)&&(mouseY>square4TopY)&&(mouseX<square4BottomX)&&(mouseY<square4BottomY) )
  {
    tmpImage = "funny.png"; 
    //tmp = loadImage(tmpImage); 
    image(tmp, startX, startY, 400, 400);
  }
} // end draw()






class Action
{
  Character character;
  String mood;
  float x, y;
  int speed;
  int diameter;
  //character constructor
  Action(Character character) 
  {
    this.character = character;
  }

  void jump() 
  {
    x += random(-speed, speed);
    y += random(speed, speed);
  }


  //methods!
  void move() 
  {
    x += random(-speed, speed);
    y += random(speed, speed);
  }


  void run() 
  {
    x += random(-speed, speed);
    y += random(speed, speed);
  }


  void sit() 
  {
    x += random(-speed, speed);
    y += random(speed, speed);
  }

  void display() 
  {
    ellipse(x, y, diameter, diameter);
  }
}


class Weather
{
  int intensity;
  int wind;
  int snow;
  int sunshine;
  int rain;
  String direction;
  float speed = 0.5;
}

class Time
{
  float millis = millis();
  float second;
  float minute;
  float hour = hour();
  float day = day();
  float month = month();
  float year;
}

class Enviroment
{
}

class Level
{

  String name;
  String difficulity;
  int currentLevel;
  int maxLevels;
  int currentWorld;
  int maxWorlds;

  //constructor
  Level(String name, String difficulity, int currentLevel, int currentWorld)
  {
    this.name = name;
    this.difficulity = difficulity;
    this.currentLevel = currentLevel;
    this.currentWorld = currentWorld;
  }
}













void keyPressed() {
  if ((key == 'c') || (key == 'C')) {
    pressed = true;
    sound.rewind();
    sound.play();
  }

  if (key == CODED) {
    if (keyCode == UP) {

      startY -= 30;
      jumpSound.rewind();
      jumpSound.play();
    } else if (keyCode == DOWN) {

      if (startY < displayHeight/2 -40) {
        startY += 30;
      }
    } else if (keyCode == LEFT) {

      startX -= 30;
    } else if (keyCode == RIGHT) {

      startX += 30;
    }
  }
}

