float a1, b1, vx1, vy1;
float a2, b2, vx2, vy2;
int op1, op2;
int frames = 0;  // 0.1 sec / frame
int count, state;
void setup() {
  size(450, 300);
  a1 = a2 = 40;
  b1 = 40;
  b2 = 60;
  op1 = 1;
  op2 = 1;
  vx1 = 4;
  vy1 = vx2 =vy2 = 0;
  //framerate
  frameRate(5);
}
void draw() {
  background(#7b8483);
  //path();
  frames++;
  if ((frames %10) == 0 ) {
    background(#7b8483);
    fill(0);
    textSize(50);
    text( frames/10 + " sec", 300, 100);
  }
  path();
  if (frames == 40) {
    vx1 = 0;
    vy1 = 5;
  } // 0 --> 40, 4 second
  else if (frames == 70) {
    vx1 = 5;
    vy1 = 0;
  } else if (frames == 110) {
    vx1 = 0;
    vy1 = 0;
    vx2 = 4.5;
    vy2 = 0;
  } else if (frames == 150) {
    vx2 = 0;
    vy2 = 5;
  } else if (frames == 180) {
    vx2 = 5;
    vy2 = 0;
  } else if (frames == 220) {
    vx2 = 0;
    vy2 = 0;
  } else if (frames == 250) {
    vx1 = 5;
    vy1 = 0;
  } else if (frames == 260) {
    vx2 = 0;
    vy2 = -5;
  } else if (frames == 300) exit();

  a1 += vx1;
  b1 += vy1;
  a2 += vx2;
  b2 += vy2;
  cat(a1, b1, op1);
  ka(a2, b2, op2);
}
