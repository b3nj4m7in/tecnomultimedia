class Botones {
  float x, y ;


  Botones() {
    x = 0 ;
    y=  0 ;
  }
  //pantalla 1- PASAR PANTALLA 1 A 2
  void dibujarboton( String tex, float posx, float posy, float tamano, color col  ) {

    pushStyle();
    noStroke();
    fill(col);
    rect(posx, posy, tamano*2, tamano, 28 );
    popStyle();
    pushStyle();

    textAlign(CENTER);

    text (tex, posx+84, posy+45);

    popStyle();
  }

  //pantalla2
  void boton2() {
    pushStyle();
    fill(255, 0, 0, 180);
    rect(500, 300, 180, 70, 28 );
    popStyle();
    pushStyle();
    textSize(15);
    text("agarrar lo que puedas \n y entrar al bunker", 594, 330 );
    popStyle();

    pushStyle();
    fill(255, 0, 0, 180);
    rect(100, 300, 190, 70, 28 );
    popStyle();
    text("Salir afuera", 195, 330 );
  }
  void boton4 () {
    pushStyle();
    fill(255, 0, 0, 180);
    rect(110,100, 100, 70, 28 );
    rect(350,100, 100, 70, 28 );
    rect(560,100, 100, 70, 28 );
    popStyle();
    
    pushStyle();
    textSize(20);
    text("Mujer", 160, 130 );
    text("Hombre", 400 , 130);
    text("Hijo" , 610 , 130 );
    popStyle();
  }
  
  void boton( color tinte, int posx, int posy, int tam ) {
    if (mouseOver(posx, posy)) {
      fill(#E88A0E);
    } else {
      fill(tinte);
    }
    rect (posx, posy, tam*2, tam, 28);
  }

  boolean mouseOver(int posx, int posy) {
    if (mouseX > posx && mouseX<posx+600 && mouseY>posy && mouseY<posy+100) {
      return true;
    } else {
      return false;
    }
  }
}
