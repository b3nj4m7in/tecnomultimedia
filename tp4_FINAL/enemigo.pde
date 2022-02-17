class Bomba {

  //CAMPOS//
  String  estado = "incio";
  float x, y ;
  float tam ;
  float vel ;
  PImage bomba1 ;


  //CONTRUCTOR//
  Bomba(float t ) {
    x = random (width);
    y = -200 ;
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


    for (int i = 0; i < 9; i++ ) {
      image(bomba1, x, y) ;
    }
  }
  void reciclar() {
    if (y>height+80 ) {
      x = random(0, 700 );
      y = -600;
      tam = random (10, 20);
      vel = random (4, 8);
    }
  }

  float getX() {

    return x ;
  }
  float getY() {

    return y ;
  }
  void mover() {
    y -=20;
    if (y<0+100) {
      y = -600+random(height);
    }
  }
}
