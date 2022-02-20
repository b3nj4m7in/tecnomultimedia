class Juego {

  int pantalla, tiempo ;
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
    println( "pantalla", pantalla );

    if (pantalla==0) {
      fondo.dibujarFondo1();

      //botones.dibujarboton( ("Aventura"), 310, 300, 80, color(255, 0, 0));

      botones.dibujarboton(("Aventura"), 310, 400, 80, color(255, 0, 0));

      botones.dibujarboton(("creditos"), 310, 500, 80, color(255, 0, 0));
    } 
    //---CREDITOS---//
    if (pantalla==3) {
      fondo.creditos();
      botones.dibujarboton(("Volver"), 320, 400, 80, color(0));
    }
    //---AVENTURA---//
    if (pantalla==1) {
      fondo.dibujarFondo2();
      texto.tex1();
      botones.boton2();
      //---MUERTE---//
    } else if (pantalla==4 ) {
      fondo.muerte();
      pushStyle();
      textSize(30);
      fill(0);
      text("MORISTE...", 400, 400);
      popStyle();
      botones.dibujarboton(("Reiniciar"), 320, 500, 80, color(255, 0, 0));
    }
    if (pantalla==5 ) {

      fondo.dibujarFondo3();
      personajes.dibujarPersonaje();
      pushStyle();
      noStroke();
      fill(0, 0, 0, 180 );
      rect (0, 380, 800, 400, 50 );
      popStyle();
      pushStyle();
      textSize(15);
      text("Dia 1", 400, 400);
      popStyle();
      texto.tex2();
      botones.boton4();

      //-----------JUEGO---------//    
      if (pantalla==6) {

        j2.update();
        j2.draw();
        j2.teclado ( keyCode );
      }
    }

    if (pantalla==8) {
      fondo.dibujarFondo3();
      personajes.dibujarPersonaje();
      pushStyle();
      noStroke();
      fill(0, 0, 0, 180 );
      rect (0, 380, 800, 400, 50 );
      popStyle();
      pushStyle();
      textSize(15);
      text("Dia 2", 400, 400);
      popStyle();
      texto.tex3();
      botones.boton4();
    }
    if (pantalla==9) {
      fondo.dibujarFondo3();
      personajes.dibujarPersonaje();
      pushStyle();
      noStroke();
      fill(0, 0, 0, 180 );
      rect (0, 380, 800, 400, 50 );
      popStyle();
      pushStyle();
      textSize(15);
      text("Dia 3", 400, 400);
      popStyle();
      texto.tex4();
      botones.dibujarboton((">"), 600, 500, 80, color(#F59B0A));
    }
  }


  ///--- PASE DE PANTALLAS , AVENTURA Y JUEGO ---///

  void pantalla() {
    //Aventura
    if ((mouseX > 310 ) && ( mouseX < 510 )&&(mouseY > 400 ) && (mouseY < 470 ) && pantalla ==0 ) {
      pantalla=1;

      //creditos
      if ((mouseX > 310 )&&(mouseX< 490)&&(mouseY>500)&&(mouseY<570)&& pantalla==0 ) {
        pantalla = 3;
      } 
      //Aventura a Juego

      //JUEGO
    } else if ((mouseX>310)&&(mouseX<470)&&(mouseY>500)&&(mouseY <580)&& pantalla==6 ) {
      j2.estado();
      j2.estado = "jugando";
      j2.marca = millis();
      j2.Reinicio();
    }
    //creditos a inicio
    if ((mouseX > 310 )&&(mouseX < 490)&&(mouseY>400)&&(mouseY<470)&& pantalla==3 ) {
      pantalla = 0;
    }

    //aventura a muerte
    if ((mouseX > 100 )&&(mouseX < 290)&&(mouseY > 300 )&&(mouseY < 370 )&& pantalla==1) {
      pantalla=4;
    } else if ((mouseX > 320 )&&(mouseX < 500)&& (mouseY > 500 )&&(mouseY < 570 )&& pantalla==4) {
      pantalla = 0 ;
    }
    //aventura
    if ((mouseX > 500 ) && ( mouseX < 680 )&&(mouseY > 300 )&& (mouseY < 370 ) && pantalla == 1 ) {
      pantalla =5 ;
    }
    //aventura
    if ((mouseX > 110 ) && (mouseX < 210 ) && ( mouseY > 100 )&& (mouseY < 170 ) && pantalla == 5 ) {
      pantalla = 7 ;
    }

    //aventura
    if ((mouseX > 110 ) && ( mouseX < 210 ) && (mouseY > 100 )&& (mouseY < 170 )&& pantalla == 7 ) {

      pantalla = 8 ;
    }
    if ((mouseX > 110 ) && ( mouseX < 210 ) && (mouseY > 100 )&& (mouseY < 170 )&& pantalla == 8 ) {

      pantalla = 6 ;
    }
  }
}
