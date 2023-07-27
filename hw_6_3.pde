float x0 , y0 , vx0 , vy0;
float x , y , vx , vy ,d ;
int o1 , o2 ; 
int frames = 0 ; //0.1 sec / frame

void setup (){
  size (1200,800);
  
  x0 = 130 ;//cat pich
  y0 = 240 ;
  vx0 = 7 ;
  vy0 = 0 ;
  d =100;
  
  x = 100 ;//pink ka
  y = 290 ;
  vx = 0 ;
  vy = 0 ;
  
  o1 = 60;
  o2 = 50;
  
  frameRate(10);

}
void draw (){
  background (120);
  road();
  
  frames++; 
  if (frames == 120) { vx0 = 0 ; vy0 = -10;}
  else if (frames == 135) { vx0 = 0 ; vy0 = 0;}
  else if (frames == 150) { vx = 15 ; vy = 0;}
  else if (frames == 198) { vx = 0 ; vy = 15;}
  else if (frames == 222) { vx = 15 ; vy = 0;}
  else if (frames == 235) { vx = 0 ; vy = 0;}
  else if (frames>240) {
    background (0);
    textSize (120);
    text ("GAME OVER", 350,400);
  } 
 
  else if (x > 930 && y < 800) {
    fill (255,0,0);
    textSize (40);
    text ("\"!!DANGEROUS AREA!!\"" ,80 , 80); 
    fill (230,0,0);
    rect ( 880 , 550 , 200 , 200 );
    fill (0,230,0);
    rect ( 900 , 50 , 200 , 150 );

  }

  else if ( x0 > 950 && y0 < 100) {
    fill (255);
    textSize (40);
    text ("\"Congratulation\"" ,100 , 80); 
    fill (0,230,0);
    rect ( 900 , 50 , 200 , 150 );

  }
  else if (frames > 400) exit();
 
  x0 += vx0;
  y0 += vy0;
  x  += vx ;
  y  += vy;
   
  ka ( x , y , o2 ) ;
  pich ( x0 , y0 , o1 );
}
