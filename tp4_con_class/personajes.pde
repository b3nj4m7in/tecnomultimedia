class Personajes {

  //---CAMPOS---//


  float x, y  ;
  float x1, y1, t ; 
  PImage hombre1 ;
  PImage mujer1 ;
  PImage hijo1 ;

  int espacio = 20 ;

  //---CONSTRUCTOR---//

  Personajes () {
    x1=363 ;
    y1 =350 ;
    t =60 ;
    x = width/2+40 ;
    y = 400 ;

    mujer1   = loadImage ("mujer.png");
    mujer1.resize( width -espacio*2, height - espacio*2);
    hombre1  = loadImage ("hombre.png") ;
    hombre1.resize( width -espacio*2, height - espacio*2);
    hijo1    = loadImage ("hijo.png");
    hijo1.resize( width -espacio*2, height - espacio*2);
  }
  void dibujarPersonaje() {
    pushStyle();
    imageMode(CENTER);

    image (hombre1, x, y);
    image (mujer1, 150, y);
    image (hijo1, 820, y);
    popStyle();
  }


  //METODOS//

  void Personaje1() {
    ellipse(x1, y1, t, t);
    pushStyle();
    imageMode(CENTER);

    image (hombre1, x, y);

    fill(255);
    popStyle();
  }

  //--------------------------// 


  //--keypressed--//


  void mover (int k ) {
    pushStyle();

    if (k == RIGHT) {
      x += 10 ;
      x1+= 10;
    } 
    if (k == LEFT) {

      x -= 10;
      x1-= 10;
    }
    popStyle();
  }
  


  boolean colision(Bomba[] bo ) {

    for (int i = 0; i < bo.length; i++) {

      float  x_bomba = bo[i].getX();
      float  y_bomba = bo[i].getY();
      float d = dist ( x_bomba, y_bomba, x1, y1);

      if (d<t+20) {

        return  true ;
      }
    }
    return false ;
  }
}
