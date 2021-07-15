
// https://youtu.be/ckNerhItDps

float   a ;
boolean linea=true;
float col ;

void setup () {
  size(600, 600);

  rectMode (CENTER ) ;
  col += random (-222, 27 );
  strokeWeight (16);
}

void draw () {
  
  float mx = map(mouseX, 0, width, 0, 255 ) ;
  float my = map (mouseY, 0, height, 0, 255 );
  
  background(mx, 0.1, my );
  stroke ( mx,  0 , my );
  fill(my, 100 , mx  );
  
  translate (width/2, height/2 );
  for (int i = 0; i<100; i++ ) {
    scale(0.95);
    rotate(radians(a));
    rect(0, 0, 300, 300);
  }
  a+=0.1 ;
}
