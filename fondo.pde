class Fondo {
  float x, y ;
  int maxImagen = 16 ;
  int imageIndex = 0 ;
  PImage [] images = new PImage [maxImagen] ;
  PImage [] fondos ;
  PImage logo ;
  PImage fondo ;
  PImage calabera ;
  PImage logo2;

  int espacio = 0 ;
  Fondo() {

    fondos    = new PImage [10] ;
    fondos[0] = loadImage ("intro.png" );
    fondos[1] = loadImage ("ciudad.png");
    fondos[2] = loadImage ("bunker.png");
    calabera = loadImage ("calabera.png");
    logo = loadImage ("60.png");
    logo2 = loadImage ("60minigame.png");
    pushStyle();
    for (int i = 0; i  < images.length; i++) {
      images[i] = loadImage("frame-" + i + ".png");
      imageMode(CENTER);
    }
    popStyle();
  }
  void dibujarFondo1() {
    image ( fondos[0], espacio, espacio, width -espacio*2, height - espacio*2 );
    pushStyle();
    imageMode(CENTER);
    image (logo, width/2, 200, 150, 150 );
    popStyle();
  }
  void dibujarFondo2() {
    pushStyle();
    image (fondos[1], 0, 0);
    noStroke();
    fill(255, 41, 41, 180);
    rect(0, 0, 1000, 700);
    popStyle();

    pushStyle();
    noStroke();
    fill(0, 0, 0, 180 );
    rect (0, 380, 800, 400, 50 );
    popStyle();
  }
  void dibujarFondo3 () {
    image (fondos[2], espacio, espacio, width -espacio*2, height - espacio*2 );
  }
  void dibujarFondo() {
    image (fondos[2], espacio, espacio, width -espacio*2, height - espacio*2 );
  }

  void creditos () {
    background(0);
    pushStyle();
    textAlign(CENTER);
    fill(255);
    textSize(30);
    text("Benjamin Almeida\nCOM-3 ", 410, 200);
    popStyle();
  }

  void muerte () {
    background(140, 0, 0 );

    image(images[imageIndex], 0, 0  );
    imageIndex = (imageIndex+1) % images.length;
    pushStyle();
    imageMode(CENTER);
    image (calabera, width/2, 200, 200, 200  );
    popStyle();
  }
  void minigame () {
    image ( fondos[0], espacio, espacio, width -espacio*2, height - espacio*2 );
    pushStyle();
    imageMode(CENTER);
    image (logo2, width/2, 200, 300, 300 );
    popStyle();
  }
}
