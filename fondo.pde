class Fondo {
  float x, y ;
  PImage fondo ;
  int espacio = 0 ;
  Fondo() {
    fondo    = loadImage ("bunker.png" );
  }
  void dibujarFondo() {
    image ( fondo, espacio, espacio, width -espacio*2, height - espacio*2 );
  }
}
