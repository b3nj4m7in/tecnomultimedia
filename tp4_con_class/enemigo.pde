class Bomba {

  //CAMPOS//
  float x, y ;
  float tam ;
  float vel ;
  PImage bomba1 ;


  //CONTRUCTOR//
  Bomba(float t) {
    bomba1 = loadImage("bomba.png");
    bomba1.resize(50, 70);
    tam = t;
    vel = random (4, 8);
  }


  // METODOS//
  void actualizar() {
    y += vel ;
    reciclar();
  }
  void dibujar() {
    
    
  for (int i = 0; i < 9; i++ ){
    image(bomba1, x, y) ;
  }
  }
  void reciclar() {
    if (y>height+80 ) {
      x = random(0, 700 );
      y = -600;
      tam = random (10, 20);
      vel = random (4, 7);
    }
  }

  float getX() {

    return x ;
  }
  float getY() {

    return y ;
  }
  void mover () { 
    y-=-10;
    if (y<0) {
      x = random( tam/2, width - tam/2 ) ;
      y = random (-600, -1000);
    
    }
  }
}
