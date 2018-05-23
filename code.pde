size(800, 800);
textAlign(CENTER, CENTER);
//
//
//VARIABLES
//
//
/*
----------------------------------------------------------
Variables used throughout
----------------------------------------------------------
*/
var deviceType=0;
var sectionNo=1;
/*
----------------------------------------------------------
Variables used in Section 1
----------------------------------------------------------
*/
var buttonAlt=0;
var keyAlt=0;
var tsGauge=0;
var kbGauge=0;
var mouseCheck=0;
//
//
//DRAW LOOP
//
//
draw=function(){
    if(sectionNo==1){
/*
----------------------------------------------------------
        Section 1: Type selection
----------------------------------------------------------
*/
        background(255, 255, 0);
        fill(0);
        textSize(50);
        text("What type of device are you on?", 400, 70);
        text("KEYBOARD", 600, 140);
        textSize(35);
        text("TOUCHSCREEN", 200, 135);
        textSize(20);
        text("Tap these two buttons alternately:", 200, 230);
        text("Mash any key repeatedly:", 600, 230);
        stroke(0);
        strokeWeight(5);
        line(400, 100, 400, 780);
        line(30, 180, 770, 180);
        fill(0);
        textSize(130);
        text("A", 460, 440);
        text("N", 460, 550);
        text("Y", 460, 660);
        text("K", 600, 440);
        text("E", 600, 550);
        text("Y", 600, 660);
        rect(300, 300, 50, 500);
        rect(700, 300, 50, 500);
        fill(255);
        stroke(255);
        rect(300, 800-tsGauge, 50, tsGauge);
        rect(700, 800-kbGauge, 50, kbGauge);
        stroke(0);
        if(buttonAlt==0){
            fill(0, 255, 0);
        }else{
            fill(255, 0, 0);
        }
        ellipse(150, 400, 170, 170);
        if(buttonAlt==1){
            fill(0, 255, 0);
        }else{
            fill(255, 0, 0);
        }
        ellipse(150, 650, 170, 170);
        if(tsGauge>0){
            tsGauge--;
        }
        if(kbGauge>0){
            kbGauge--;
        }
        if(keyPressed){
            keyAlt=1;
        }else if(keyAlt==1){
            kbGauge+=10;
            keyAlt=0;
        }
        if(mousePressed&&sqrt(sq(mouseX-150)+sq(mouseY-400))<85&&buttonAlt==0&&mouseCheck==0){
            buttonAlt=1;
            tsGauge+=10;
            mouseCheck=1;
        }
        if(mousePressed&&sqrt(sq(mouseX-150)+sq(mouseY-650))<85&&buttonAlt==1&&mouseCheck==0){
            buttonAlt=0;
            tsGauge+=10;
            mouseCheck=1;
        }
        if(!mousePressed){
            mouseCheck=0;
        }
        if(tsGauge>500){
            deviceType=1;
            sectionNo=2;
        }
        if(kbGauge>500){
            deviceType=2;
            sectionNo=2;
        }

/*
----------------------------------------------------------
        END OF Section 1
----------------------------------------------------------
*/
    }
    if(sectionNo==2){
/*
----------------------------------------------------------
        Section 2: Type selection
----------------------------------------------------------
*/
        background(255, 127, 0);
        
/*
----------------------------------------------------------
        END OF Section 2
----------------------------------------------------------
*/
    }

    //
    //
    //END
    //
    //
}