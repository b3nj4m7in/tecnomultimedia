class Fondo {
  float x, y ;
  PImage [] fondos ;
  PImage logo ;
  PImage fondo ;
  int espacio = 0 ;
  Fondo() {

    fondos    = new PImage [4] ;
    fondos[0] = loadImage ("intro.png" );
    fondos[1] = loadImage ("ciudad.png");
    fondos[2] = loadImage ("bunker.png");
    logo = loadImage ("60.png");
  }
  void dibujarFondo1() {
    image ( fondos[0], espacio, espacio, width -espacio*2, height - espacio*2 );
    pushStyle();
    imageMode(CENTER);
    image (logo, width/2, 200  );
    popStyle();
  }
  void dibujarFondo2() {
    pushStyle();
    image (fondos[1], 0, 0);
    noStroke();
    fill(255, 41, 41, 100);
    rect(0, 0, 1000, 700);

    popStyle();
  }
  void dibujarFondo3 () {
    image (fondos[2], espacio, espacio, width -espacio*2, height - espacio*2 );
  }
  void dibujarFondo() {
    image (fondos[2], espacio, espacio, width -espacio*2, height - espacio*2 );
  }
}
