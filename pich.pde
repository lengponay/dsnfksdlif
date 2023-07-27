void pich (float x0 , float y0 , float d0 ){
  fill(190);
  stroke (0);
  strokeWeight(d0*0.05); 
  //tight
  curve ( x0+d0*0.7 , y0+1.13*d0 , x0-d0*0.5 , y0+1.0*d0 , x0-d0*0.6 , y0+1.2*d0 , x0-d0*0.07 , y0+1.2*d0 ); 
  beginShape();
  vertex(x0-d0*0.5 , y0+1.0*d0 );
  vertex(x0 , y0+1.13*d0 );
  vertex(x0 , y0+1.28*d0 );
  vertex(x0-d0*0.6 , y0+1.20*d0 );
  endShape ();
  //leg
  rect ( x0-d0*0.07 , y0+1.13*d0 , d0*0.94 , d0*0.4 , d0*0.8);
  //body
  arc (x0+0.4*d0 , y0+d0 , 0.75*d0 , 1.3*d0 ,0.7*PI , 2.3*PI ,CLOSE );
  fill (240);
  arc (x0+0.4*d0 , y0+1.1*d0 , 0.5*d0 , d0 ,0.7*PI , 2.3*PI ,CLOSE );
 
  //LINE
  line ( x0+0.33*d0 , y0+1.25*d0 , x0+0.33*d0 , y0+1.5*d0 );
  line ( x0+0.47*d0 , y0+1.25*d0 , x0+0.47*d0 , y0+1.5*d0 );
  //face
  fill(190);
  rect (x0 , y0 , d0*0.8, d0*0.7 , d0*2.9 , d0*2.9, d0*0.9 , d0*0.9 );
  //left ear
  beginShape();
  vertex (x0+ 0.035*d0 , y0+0.25*d0);
  vertex (x0 , y0-0.1*d0);
  vertex (x0+0.3*d0 , y0+0.01*d0);
  endShape();
  //right ear
  beginShape();
  vertex (x0+ 0.77*d0 , y0+0.25*d0);
  vertex (x0+ 0.8*d0 , y0-0.1*d0);
  vertex (x0+0.5*d0 , y0+0.01*d0);
  endShape();
  //eye 
  fill (0);
  noStroke ();
  circle ( x0+d0*0.25 , y0+d0*0.35 , d0*0.18 );
  circle ( x0+d0*0.55 , y0+d0*0.35 , d0*0.18 );
  //white
  fill (240);
  circle ( x0+d0*0.25 , y0+d0*0.33 , d0*0.06 );
  circle ( x0+d0*0.55 , y0+d0*0.33 , d0*0.06 );
  //nose
  fill (#370617);
  ellipse ( x0+d0*0.4 , y0+d0*0.5 , d0*0.12 , d0*0.08 );
  
}
