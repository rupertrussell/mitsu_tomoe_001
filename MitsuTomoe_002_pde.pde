// MitsuTomoe
// Rupert Russell 31 October 2020
// artwork on redbubble at: https://www.redbubble.com/shop/ap/61237510?ref=studio-promote
// https://www.redbubble.com/people/rupertrussell/shop
// code on github at:https://github.com/rupertrussell/mitsu_tomoe_001
// based on http://taikosource.com/taiko-clipart/mitsu-tomoe-2/


float commaScale = 0.6550003;
float xOffset = -0.10199992;
float yOffset = 0.1030001;

float dotyOffset = 0.25999996;
float nudge = 0.0001;

int scale = 1000;
PImage img;

void setup() {
  size(1100, 1100);
  imageMode(CENTER);
  noLoop();
  noFill();
}

void draw() {
  background(255);
  translate(width/2, height/2);
  // Images must be in the "data" directory to load correctly
  // img = loadImage("MitsuTomoe-BLK.png");
  // image(img, 0,0 scale, scale);
  ellipse(0, 0, scale, scale); // outside ellipse
  ellipse(0, 0, scale * 0.95, scale * 0.95); // inner edge of outside rim

  for (int x=0; x < 3; x++) {
    arc(0, - scale * dotyOffset, scale * 0.38, scale * 0.38, radians(14), radians(270)); // arc around dot of the comma
    arc(0, 0, scale * 0.9, scale * 0.9, radians(270), radians(378.3) ); // outter edge of commas
    arc(0 - scale * xOffset, 0 + scale * yOffset, scale * commaScale, scale * commaScale, radians(284.5), radians(366.65) ); // inner edge of  the comma // 367
    rotate(radians(365/3));
  }

  // save("MitsuTomoe_1000.png");
  // exit();
}
