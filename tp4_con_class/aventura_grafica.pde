class Juego {

  int pantalla ;
  boolean est = false ;
  boolean reiniciar = false ;
  Juego2 j2 ;
  Botones botones ;
  Personajes personajes ;
  Fondo fondo ;
  Textos texto ;

  Juego () {


    pantalla = 0 ;
    j2 = new  Juego2 (9);
    botones = new Botones ();
    personajes = new Personajes ();
    fondo = new Fondo ();
    texto = new Textos () ;
  }

  void draw() {
    if (pantalla==0) {

      fondo.dibujarFondo1();
      botones.boton1();
      botones.boton2();
    } 
    if (pantalla==1) {
      j2.update();
      j2.draw();
      j2.teclado ( keyCode );
      //fondo.dibujarFondo2();
      //texto.tex1();
    }
  }


  ///---aventura grafica---///

  void pantalla() {
    if ((mouseX >300)&&(mouseX< 500)&&(mouseY>400)&&(mouseY<590) && pantalla == 0 ) {
      pantalla = 1;
    } else if ((mouseX>250)&&(mouseX<550)&&(mouseY>440)&&(mouseY <540)&& pantalla==1 ) {
      j2.estado();
    } else if ((mouseX>300)&&(mouseX<500)&&(mouseY>500)&&(mouseY <580)&& pantalla==1) {
    }
  }
}
