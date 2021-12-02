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
    x = random( tam/2, width - tam/2 ) ;
    y = random (-600, -1000);
    tam = t;
    vel = random (4, 8 );
  }


  // METODOS//
  void actualizar() {
    y += vel ;
    reciclar();
  }
  void draw() {

    image(bomba1, x, y) ;
    
  }
  void reciclar() {
    if (y>height +80 ) {
      x = random(0, 700 );
      y = -100;
      tam = random (10, 20);
      vel = random (4, 7);
    }
  }
  
  float getX(){
    
    return x ;
  }
   float getY(){
    
    return y ;
  }
 
}
