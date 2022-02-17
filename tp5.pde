class Juego2 {
  int tiempo, marca ;
  String estado = "inicio" ;
  Personajes p1 ;
  Bomba[] bomba ;
  Fondo fondo ;
  Botones botones ;
  int c;
  boolean est = false ;
  boolean reiniciar = false ;

  Juego2(int cant) {
    c = cant ;
    estado = "inicio" ;
    tiempo = 0 ; 
    marca = 0 ;
    p1 = new  Personajes ();
    botones = new Botones ();

    bomba = new Bomba [c];

    fondo = new Fondo ();

    for (int i = 0; i < 9; i++ ) {
      bomba[i] = new Bomba (10);
    }
  }

  void update () {
    println("update", estado);

    if ( estado.equals("jugando") ) {


      for (int i = 0; i < c; i++ ) {

        bomba[i].actualizar();
        p1.colision (bomba);
      }
    }
  }

  void draw () {
    if (p1.colision(bomba)) {
      reiniciar = true;
    }
    if (reiniciar) {
      Reinicio();
    } else {

      if (est==false) {

        fondo.minigame();
        pushStyle();
        textSize(20);
        stroke(0, 0);
        strokeWeight(5);
        botones.boton ( color(#9D6408 ), 310, 500, 80 ) ;
        popStyle();
        pushStyle();
        textAlign(CENTER);
        fill(255);
        text(" INICIAR", 390, 550 );        
        popStyle();
      } else if (est == true) {
        fondo.dibujarFondo();
        p1.Personaje1();  
        for (int i = 0; i < 9; i++ ) {

          bomba[i].dibujar();
        }
      }
    }
  }

  void Reinicio () {
    fondo.muerte();
    pushStyle();
    textSize(30);
    fill(0);
    text("MORISTE...", 400, 400);
    popStyle();
    botones.dibujarboton(("Continuar"), 320, 500, 80, color(#F59B0A));
  }


  void reciclar() { 

    for (int i = 0; i < c; i++ ) {

      bomba[i].reciclar();
    }
  }





  void teclado (int k ) {

    p1.mover (k);
  }


  void estado() {


    if ((mouseX>250)&&(mouseX<550)&&(mouseY>440)&&(mouseY <540)&& est == false ) {
      est= true ;
    } else {
      est = false;
    }
  }
}
