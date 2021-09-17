PImage fondo ;
PImage fondo2 ;
PImage ciudad;
PImage logo ;
String[]textos;
int espacio =  0;
int pantalla = 0;


void setup() {
  size(1000, 700);
  textos= new String[50];
  textos [1]="Empieza a sonar la  alarma de evacuación , tienes 60 seg para tomar lo que sea  , \nporque una bomba atómica está por caer en la ciudad.";



  fondo = loadImage ("bunker.png");
  fondo2 = loadImage ("intro.png");
  ciudad = loadImage ("ciudad.png");
  logo = loadImage ("60.png");

  if (pantalla ==0) {
    image ( fondo2, espacio, espacio, width - espacio*2, height- espacio*2 );
    push();
    imageMode(CENTER );
    image (logo, 500, 250 );
    pop();
    textSize(50);

    text("PULSAR PARA INICIAR", 235, 625  );
    stroke(0, 0);
    strokeWeight(5);
    fill(255, 50 );
    rect ( 200, 560, 600, 100, 30 );
  }
}


void draw () {


  if (pantalla==1) {
    image( ciudad, 0, 0 );

    noStroke();
    fill(255, 41, 41, 100);
    rect(0, 0, 1000, 700);
    noStroke();
    fill(0, 200);
    rect (0, 460, 1000, 400, 50 );
    texto (textos[1]);
  } else if (pantalla==2 ) {
    image ( fondo, espacio, espacio, width - espacio*2, height  - espacio*2 );
    noStroke();
    fill(0, 200);
    rect (0, 460, 1000, 400, 50 );
  }
}





void mousePressed() {
  if ((mouseX > 200)&&(mouseX<800)&&(mouseY>560)&&(mouseY < 660)) {

    pantalla=1 ;
  } else if (pantalla==1) {
    pantalla=2;
  }
}
