int x;
float y;
PImage imagen; 
PFont  fuente;
int pantalla ; 

void setup() { 

  size(600, 600);
  background (0);

  fuente = loadFont ("PressGothic-50.vlw");
  textFont(fuente);


  imagen = loadImage("Naughty_Dog-Logo.wine.png");
  imagen.resize(width, height ) ;
  pantalla = 0 ;

  textAlign(CENTER, CENTER);
  textSize(50);
  x = 2 ;
  y = 255;
  imageMode(CENTER);
}  

void draw() {

  if (millis() - pantalla < 4000 && millis() - pantalla  <8000) {
    fill(255);
    background (0); 

    y = y - x ; 

    tint(255, y );

    image (imagen, width/2, height/2 );
  }
  if (millis() - pantalla > 4000 ) {

    background(0);
  } 
  if (millis() - pantalla > 4000 ) {

    textSize(20);

    text("D I R E C T E D B Y", width/2, 270);
    textSize(30);
    text("N E I L D R U C K M A N N", width/2, height/2);
  }
  if (millis() - pantalla >8000 ) {
    background(0);
  } 
  if ( millis() - pantalla > 12000) {
    textSize(20);
    text("G A M E   D  I  R  E  C  T  O  R  S", width/2, 270);
    textSize(30);
    text (" A N T H O N Y  N E W M A N      K U R T   M A R G E N A U", width/2, height/2);
  }

  if (millis() - pantalla >= 16000) {
    background(0);
  }
  if (millis() - pantalla > 20000) {
    textSize(25);
    text("A R T    D I R E C T O R S ", width/2, 250 );
    textSize(30);
    text ("E R I C K    P A N G I L I N A N\nJ O H S    S W E E N E Y ", width/2, height/2);
  }
  if (millis() - pantalla >24000) {
    background(0);
  }
  if (millis() - pantalla > 26000) {
    textSize(20);
    text("P R O G R A M M I N G    D I R E C T O R S", width/2, 250 );
    textSize(35);
    text("T R A V I S    M C I N T O S H\nC H R I S T I A N    G Y R L I N G", width/2, height/2);
  }
  if ( millis() - pantalla >=28000) {
    background(0);
  }
  if (millis() - pantalla > 32000) {
    textSize(20);
    text ("T E C H N I C A L   A R T   D I R E C T O R", width/2, 250 );
    textSize(30);
    text ("W A Y L O N    B R I N C K", width/2, height/2);
  }
  if (millis() - pantalla > 36000) {
    background(0);
  }
  if (millis() - pantalla >= 40000) {
    fill(random(100, 255), 0, random(200, 255));
    text("Hola Profe, por favor apruebeme", width/2, height/2);
  }
}
void mousePressed () { 
  pantalla=millis()-pantalla;
  y=255;
}
