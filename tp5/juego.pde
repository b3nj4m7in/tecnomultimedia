class Juego {
  int estado ;
  Personaje p1 ;
  Bomba[] bomba ;
  Fondo fondo ;
  int c;
  boolean est = false ;
  boolean reiniciar = false ;

  Juego(int cant) {
    c = cant ;
    estado = 0 ;


    p1 = new  Personaje ();

    bomba = new Bomba [c];

    fondo = new Fondo ();

    for (int i = 0; i < c; i++ ) {
      bomba[i] = new Bomba (10);
    }
  }

  void update () {

    for (int i = 0; i < c; i++ ) {

      bomba[i].actualizar();
      p1.colision (bomba);
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

        background(0);
        pushStyle();
        imageMode(CENTER );


        textSize(20);
        stroke(0, 0);
        strokeWeight(5);

        fill(255, 50 );
        rect(250, 440, 300, 100, 20);


        popStyle();
        textAlign(CENTER);
        fill(255);

        text(" INICIAR", width/2, 500 );
      } else if (est == true) {
        fondo.dibujarFondo();
        p1.dibujar();


        for (int i = 0; i < c; i++ ) {

          bomba[i].draw();
        }
      }
    }
  }


  void Reinicio () {

    background(255, 0, 0 );
    fill(255);
    rect (300, 500, 200, 80, 10 );
    fill(0);
    text(" Reiniciar", 400, 550);
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
    // 250, 440, 300, 100, 20

    if ((mouseX>250)&&(mouseX<550)&&(mouseY>440)&&(mouseY <540)&& est == false ) {
      est= true ;
    } else {
      est = false;
    }
    //300, 500, 200, 80
    if ((mouseX>300)&&(mouseX<500)&&(mouseY>500)&&(mouseY <580) && reiniciar ==true) {
      est=false;
      reiniciar=false;
   
      }
    }
  }
