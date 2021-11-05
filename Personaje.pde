class Personaje {

  //CAMPOS//
  float x1, y1, t ; //circulo//
  float x, y ;             //personaje//
  PImage hombre1;
  int espacio = 20;



  //CONSTRUCTOR//
  Personaje() {
    x1=363 ;
    y1 =350 ;
    t =60 ;
    x= width/2;
    y= 500 ;
    hombre1  = loadImage ("hombre.png") ;
    hombre1.resize( width -espacio*2, height - espacio*2);
  }



  //METODOS//

  void dibujar() {
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

    if (k == RIGHT) {
      x += 10 ;
      x1+= 10;
    } 
    if (k == LEFT) {

      x -= 10;
      x1-= 10;
    }
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
