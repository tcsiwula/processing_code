
String input = "", saved = "", index, b_char;
String chinese = "你好吗";
boolean splashPage, startPage, stopPage, levelPage, hitcorrect;
boolean levelOne, levelTwo, levelThree, levelFour;
int headerStart, headerStop, bodyStart, bodyStop, footerStart, footerStop;
int macbookW = 1440;
int macbookH = 900;
int green = #82B690, blue = #51789F, red = #D33431, black = #352F33, yellow = #F2B50F;
int skyBlue = #559DCC, white = #FFFFFF;
int rightside, leftside=0, slow =(int).5, medium=1, fast=(int)1.5;
float rightSideSlow=0, rightSideFast=0, leftSideSlow=0, leftSideFast=0, planeLocationX = 200, planeLocationY = 200;
String data1 = "Digital currency is one of the most promising emerging technologies for the next 10 years, according to Joi Ito, director of the MIT Media Lab. More than 600 million has been invested by venture capitalists in startups building on bitcoin and related digital currencies. Additionally, companies like UBS, IBM, and Intel have established labs to identify opportunities to leverage digital currency.";
String data2 = "Bitcoin, and the underlying technology, blockchain, let people transfer money without a bank. It also allows them to write simple, enforceable contracts without a lawyer, or, turn physical items like real estate or tickets to the ball game or concert into digital assets that can be sold with low to no transaction fees.";
String data3 = "Many are projecting that the impact of digital currencies will be similar to that of the Internet–disrupting traditional industries, challenging existing regulations, and significantly increasing the volume of commerce by dramatically lowering the cost to transact and establishing trust between two previously unknown parties.";
String data4 = "Like any emerging technology, it is still unclear exactly how Bitcoin and other crytpocurrencies should be regulated.If regulation is done right, it will increase investment in digital currency startups, create jobs and allow consumers to receive cutting-edge financial services of the future, faster and safer.";
String data5 = "This month, the superintendent of the New York Department of Financial Services (NYDFS), Benjamin Lawsky, is expected to issue a new regulation called BitLicense. The goals for issuing the BitLicense include protecting consumers from fraud and preventing money laundering and other illicit uses of cryptocurrencies.";
String data6 = "However, because the NYFDS is the bellwether for financial regulation, the rules it creates, good or bad, could be replicated by the majority of states in America. If replicated, Bitcoin companies will face substantial regulatory burdens and only a handful of the most well-funded companies will survive— not because of the best product or service, but because they have access to the most money.";
String data = data1 + data2 + data3+data4+ data5 +data6;
int leftshift = displayWidth, stop = data.length();
int life = 50, score = 0, start = 0;
PFont font;
int hitWrong = 0;
int stageOne = 0, stageTwo = 0;
int keysHitCorrect = 0;
char[] cArray = data.toCharArray();
char a_char;
int s, m;
int netWords = 0;
float percent;
float grassX;
int totalTime;
int currentMinute, startMinute, endMinute;
int startSecond, currentSecond, endSeccond;
float strokes = 0;
import ddf.minim.*;
AudioSnippet hitCorrect, hitwrong, hitreturn, hitend, deafaultSong, curious, airbattle, plane2;
Minim minim;
int minutes = 0;
int wpm;
int errors;
int totalNumberOfWords = 25, wordsCompleted = 0;
PImage pic1, pic2, pic3, pic4, grass, plane;
float planex, planey;
int square2TopX = 236;
int square2TopY = 185;
int square2BottomX = 393;
int square2BottomY = 315;
float startTimeInSeconds;
int second;
int min;
int act;
int test;

float rightSideFast2 = rightSideFast;
float leftSideFast2 = leftSideFast;

float leftSideSlow2 = leftSideSlow;
        float rightSideSlow2 = rightSideSlow;
int points = keysHitCorrect;
boolean planeMusic = true;
// ########################################################################
// BUGS/TODO
// make leves for basic, medium and hard typing
// ########################################################################
        void setup()
        {
        loadSound();
        loadDisplay();
        loadSplashPage();
        loadData();
        startSecond = second();
        startMinute = minute();
        println("******   Successfully setup!    ******");
        println("displayWidth = " + displayWidth);
        println("displayHeight = " + displayHeight);
        }
        void draw()
        {
            loadCanvas();
            loadClouds();
            loadData();
            updateLoop();
            startTimeInSeconds = (millis()/1000);
              if ( points > 100000)
        {

                          text("Points > 1000. You won!", 300, 300);
loadSplashPage();
        }

        }


        void loadCanvas()
        {
        smooth();
        background(255);

        // body color
        fill(green, 180);
        noStroke();
        smooth();
        rect( 0, macbookH/2, displayWidth, macbookH);

        // footer color
        fill(skyBlue, 200);
        noStroke();
        smooth();
        rect( 0, 0, displayWidth, macbookH/2);
        textSize(35);

        currentSecond = abs(second() - startSecond);
        currentMinute = abs(minute() - startMinute);
        second = (millis()/1000);
        min = millis()/1000/60;
        //float accuracy = strokes/data.length();
        totalTime = currentMinute+currentSecond;
        percent = ((float)wordsCompleted/totalNumberOfWords);

       // println("millis()/1000 = " + millis()/1000 + " ." );
        //println("millis()/1000/60 = " + millis()/1000/60 + " ." );

        //println("totalTime = " +totalTime + " .");
        //println("startTimeInSeconds = " + startTimeInSeconds + " ." );

        double net = wordsCompleted+1/8;
        double minn = 60;
        double sum = (net/startTimeInSeconds)*50;
        println("sum = " + sum + " ." );
        println("completed percent = " + data.length() + " ." );
        println("keysHitCorrect = " + keysHitCorrect + " ." );
        println("??? = " + (double) keysHitCorrect/data.length() + " ." );

        double done = (double) keysHitCorrect/data.length();
        int d = (int) (done*100);
         act = (int) sum;

        println("d = " + d + " ." );

        double test1 = ((60 * keysHitCorrect)  / (5 * startTimeInSeconds));

        test = (int) test1;
        if ( keysHitCorrect > 1)
        {
            fill(255, 200);
             text("Speed: " +  test, 400, 500);

            netWords++;
        }

        smooth();
        fill(255, 200);

        if ( second >59)
        {
          second = 0;
        }

        text( ("Time "+ min +":"+second), 100, 500);
        //text("Index: "+ a_char, 300, 500);
        //text("totalNumberOfWords: "+ totalNumberOfWords, 400, 500);
                fill(255, 200);
        //text("wordsCompleted: "+ wordsCompleted, 900, 500);
        text("Points: "+ points, 900, 500);
        //text( data.substring(keysHitCorrect, data.length()), 100, 600 );

        //text("Accuracy: " + accuracy + "%", ((headerStop/2)*10), headerStop/3);
        //text("Accuracy: " + accuracy + "%", ((headerStop/2)*10), headerStop/3);
        }



        void loadData()
        {

        textAlign(RIGHT);
        fill(red, 200);
        text(data.substring(0, keysHitCorrect), 100, 600 );
        textAlign(LEFT);
        fill(black, 200);
        text( data.substring(keysHitCorrect, data.length()), 100, 600 );
        text( data.substring(keysHitCorrect, data.length()), 100, 600 );
         textAlign(LEFT);
        fill(yellow, 200);
        text(data.substring(keysHitCorrect, keysHitCorrect), 120, 600 );

        //fill(black, 200);
        //text(data.substring(1, 10), headerStop/2, ( headerStop + (headerStop/2)) );
        }

        void loadClouds()
        {
             grassX = 0;

        // footer color
        fill(white, 200);
        noStroke();
        smooth();

        if ( test > 25 )
        {


        rightSideFast = rightSideFast + 20;
        leftSideFast = leftSideFast - 15;
        rightSideFast2 = rightSideFast2 + 15;
        leftSideFast2 = leftSideFast2 - 20;

          // couds of right hand side of screen
              image(pic3, leftSideFast, 25); // small right cloud
              image(pic2, leftSideFast2, 340); // big left cloud

              // clouds on left side of screen
              image(pic4, rightSideFast2, 340); // small left cloud
              image(pic1, rightSideFast, 20); // big right cloud

              if (wordsCompleted == 1 || wordsCompleted == 5 || wordsCompleted == 10 || wordsCompleted == 20 || wordsCompleted == 30 || wordsCompleted == 40 || wordsCompleted == 50 || wordsCompleted == 60 || wordsCompleted == 70 || wordsCompleted == 100)
        {
                          text("10 words completed, Power-up! 2x points!", 300, leftSideSlow+500);
                                                                points = points + 10;


        }else{
              text("Good job!", 300, leftSideFast+500);
        }
        }

        if ( test <= 25 )
        {
        leftSideSlow = leftSideSlow - 5;
        rightSideSlow = rightSideSlow + 10;
         leftSideSlow2 = leftSideSlow2 - 3;
        rightSideSlow2 = rightSideSlow2 + 7;
              // couds of right hand side of screen
                image(pic3, leftSideSlow, 25); // small right cloud
                image(pic2, leftSideSlow2, 340); // big left cloud

                // clouds on left side of screen
                image(pic4, rightSideSlow2, 340); // small left cloud
                image(pic1, rightSideSlow, 20); // big right cloud
              if (wordsCompleted == 1 || wordsCompleted == 5 || wordsCompleted == 10 || wordsCompleted == 20 || wordsCompleted == 30 || wordsCompleted == 40 || wordsCompleted == 50 || wordsCompleted == 60 || wordsCompleted == 70 || wordsCompleted == 100)
        {
                          text("Milestone! Power-up! 2x points!", 300, leftSideSlow+500);


        }else{
                text("You type slow! Power-down :( -10 points~", 300, leftSideSlow+500);

        }

        }






//        // couds of right hand side of screen
//        image(pic3, 1100+leftSideSlow, 25); // small right cloud
//        image(pic2, 1000+leftSideSlow, 340); // big left cloud
//
//        // clouds on left side of screen
//        image(pic4, 20+rightSideSlow, 340); // small left cloud
//        image(pic1, 20+rightSideSlow, 20); // big right cloud


        image(plane, ((planeLocationX - 100 ) + (20 * test)), planeLocationY - test); // small left cloud

        if ( leftSideSlow < -250 || leftSideFast < -250)
                {
                        leftSideSlow = 1500;
                        leftSideFast = 1500;
                }

                if ( rightSideSlow > 1500 || rightSideFast > 1500)
                {
                        rightSideSlow = -250;
                        rightSideFast = -250;
                }

        //image(grass, grassX-200, planeLocationY+230); // small left cloud
        //println("grassX = " + grassX);

        planex = planeLocationX;
        planey = planeLocationY;
        println("test = " + test);
      if (grassX < -500)
      {
        grassX = 50;
      }




//      //if ( strokes < 100 ) {
//        if( stageOne <= 10 )
//        {
//              planeLocationX += 1;
//              planeLocationY -= 1;
//              stageOne++;
//        }
//        else if ( stageOne > 10 && stageOne <= 20 )
//        {
//           planeLocationX -= 1;
//            planeLocationY += 1;
//            stageOne++;
//        }
//       else if ( stageOne > 20 && stageOne <= 30 )
//        {
//           planeLocationX -= 1;
//            //planeLocationY += 1;
//            stageOne++;
//        }
//        else if ( stageOne > 30 && stageOne <= 40 )
//        {
//           planeLocationX += 1;
//            //planeLocationY -= 1;
//            stageOne++;
//             if (stageOne == 40)
//             {
//               stageOne = 0;
//             }
//        }
        }


        void keyPressed()
        {
        strokes++;
        hitcorrect = ( key == a_char && keysHitCorrect < data.length() );
        if ( hitcorrect)
        {
          if ( keysHitCorrect == data.length() -1 )
          {
            data = data2;
            keysHitCorrect = 0;
            wordsCompleted = 0;
          }
          keysHitCorrect++;
          hitCorrect.play();
          hitCorrect.rewind();
          if ( keyCode == 10 )
          {
              hitend.play();
              hitend.rewind();
          }

          if ( keyCode == 32)
          {
            wordsCompleted++;
            println("wordsCompleted = " + wordsCompleted);
          }
        }

        if ( !hitcorrect )
        {
          if ( key != SHIFT )
          {
              hitwrongkey();
          }
        }
        }

        void hitwrongkey()
        {
          println("keyCode = " + keyCode);
          println("key = " + key);
          if ( keyCode != SHIFT )
          {
              println("keyCode = " + keyCode);
              hitwrong.play();
             hitwrong.rewind();
              hitWrong++;
          }
          println("#####   Hit Wrong Key.    #####   ");
        }

        void hitrightkey()
        {
              println("#####   Hit Right Key.    #####   ");
        }

         void updateLoop()
        {

          if ( keysHitCorrect < data.length() )
          {
              a_char = data.charAt(keysHitCorrect);
          }

        if (startPage == true)
        {
              splashPage = false;
              startPage = false;

              loadLevel();
              if ( levelTwo == false )
              {
                    getLevel();
              }
        }
        else if (levelPage == true)
        {
              //        splashPage = false;
              //          startPage = false;
              //          stopPage = false;
              loadLevel();
              score += 1;
              textSize(20);
              textAlign(LEFT);
              text("Score: "+score, 50, 50);
        } else if (stopPage == true)
        {
              fill(0);
              textAlign(CENTER);
              textSize(25);
              text("Your Score is:"+score, width/2, 300);
              text("Hit ENTER to Restart", width/2, 350);
        }
        }

        void loadDisplay()
        {
        size(macbookW, macbookH-115);
        rightside = displayWidth;
        rightSideSlow = 20;
        leftSideSlow = 1000;
        pic1 = loadImage("cloud1.png");
        pic2 = loadImage("cloud1.png");
        pic3 = loadImage("cloud2.png");
        pic4 = loadImage("cloud2.png");
        grass = loadImage("grass.png");
        plane = loadImage("plane.png");

        println("!!!!!!   Successfully loaded Display.    !!!!!!   ");
        }

        void loadLevel()
        {
        background(255);
        // box 1
        fill(blue);
        noStroke();
        rect( (displayWidth/10), (displayHeight/10), (displayWidth/5), (displayHeight/5));
        //  rect( 0, headerStart, displayWidth, headerStop);
        //   x1, y1, (start) x2, y2, (stop)
        // box 2
        fill(red);
        noStroke();
        rect( displayWidth-((displayWidth/5)+(displayWidth/10)), (displayHeight/10), (displayWidth-(displayWidth/10)), (displayHeight/5));
        // rect( (displayWidth/5)*3, displayHeight/5, displayWidth/5, headerStop);
        // text for box 1
        textSize(35);
        smooth();
        //textAlign(CENTER);
        fill(black);
        text("Level 1: Current news", (displayWidth/5)+(displayWidth/10), (displayWidth/5)-(displayWidth/10) );
        //   textSize(35);
        //   smooth();
        //   textAlign(CENTER);
        //   text("Press Enter to start this game", width/2, height/2);
        }
        void getLevel()
        {
        // rect( (displayWidth/5), displayHeight/5, displayWidth/5, headerStop);
        if ( (mouseX>(displayWidth/5))&&(mouseY>(displayWidth/5))&&(mouseX<((displayWidth/5)*2))&&(mouseY<bodyStop) )
        {
        if (mousePressed == true)
        {
        levelOne = false;
        levelThree = false;
        levelFour = false;
        levelTwo = true;
        println("!!!!!!   Selected level 2    !!!!!!   ");
        }
        }
        //println("!!!!!!   Successfully loaded Levels.    !!!!!!   ");
        }

        void loadSplashPage()
        {
        splashPage = true;
        startPage = false;
        stopPage = false;
        background(255);
        fill(100);
        textSize(35);
        smooth();
        textAlign(CENTER);
        text("You won!!", width/2, height/2);
        println("!!!!!!   Successfully loaded Splash Page.    !!!!!!   ");
        }

        void loadSound()
        {
            minim = new Minim(this);
            deafaultSong = minim.loadSnippet("time.mp3");
            hitCorrect = minim.loadSnippet("keypressed1.wav");
            hitwrong = minim.loadSnippet("wrong.wav");
            hitend = minim.loadSnippet("complete.wav");
                        plane2 = minim.loadSnippet("plane.mp3");
            airbattle = minim.loadSnippet("airbattle.mp3");

            airbattle.loop();
            plane2.loop();
            curious = minim.loadSnippet("curious.wav");
            //deafaultSong.loop();
            println("!!!!!!   Successfully loaded Sound.    !!!!!!   ");
        }
