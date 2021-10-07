# tecnomultimedia
/*BENJAMIN ALMEIDA TP4 COM3*/



PImage fondo ;
PImage fondo2 ;
PImage ciudad;
PImage calabera ;
PImage logo ;
PImage hijo1;
PImage hombre1;
PImage hombre2 ;
PImage hijo2 ;
PImage mujer1 ;
PImage mujer2 ;
PImage hombre3 ;
String[]textos;
int espacio =  0;
int pantalla = 0;
boolean boton ;


void setup() {
  size(1000, 700);
  //Perdon Profesor pero me di cuenta tarde de el requisito del tamaño de imagen :( 
  textos= new String[50];
  textos [1] = "Empieza a sonar la  alarma de evacuación , tienes 60 seg para tomar lo que sea  , porque una bomba atómica está por caer en la ciudad.";
  textos [2] = "Tienes que darle de beber a uno de los tres..." ; 
  textos [3] = "Al tener pocos suministros  , \n  tienes que mandar a uno de los tres a buscar..." ;
  textos [4] = "Vendra el DIA 4..." ;
  textos [5] = "¡¡OH NO ESTA HERIDA!!" ;
  textos [6] = "¿Quieres curarla?";
  textos [7] = "¡AHORA TODOS ESTAN INFECTADOS POR UN VIRUS LETAL!";
  textos [8] = "Vendra al siguiente dia..." ;
  textos [9] = "Por ocaciones  de la bomba atomica comsumiste los humos nucleares ocacionandote la muerte... " ; 
  textos [10] ="Creo que tu hijo se perdio , ocacionando la muerte de ustedes dos por falta de suministros.." ; 
  fondo    = loadImage ("bunker.png" );
  fondo2   = loadImage ("intro.png");
  ciudad   = loadImage ("ciudad.png");
  logo     = loadImage ("60.png");
  calabera = loadImage ("cabalera.png");
  mujer1   = loadImage ("mujer.png");
  mujer1.resize( width -espacio*2, height - espacio*2);
  mujer2   = loadImage ("Mujer herida.png");
  mujer2.resize( width -espacio*2, height - espacio*2);
  hombre1  = loadImage ("hombre.png") ;
  hombre1.resize( width -espacio*2, height - espacio*2);
  hijo1    = loadImage ("hijo.png");
  hijo1.resize( width -espacio*2, height - espacio*2);
  hombre2  = loadImage("hombre infectado.png");
  hombre2.resize( width -espacio*2, height - espacio*2);
  hombre3 = loadImage ("hombre3.png");
  hombre3.resize( width -espacio*2, height - espacio*2);
  hijo2    = loadImage ("hijo infectado.png");
  hijo2.resize( width -espacio*2, height - espacio*2);
}


void draw () {
  println(pantalla);
  //PRIMER CAMINO//

  if (pantalla ==0) {
    image ( fondo2, espacio, espacio, width - espacio*2, height- espacio*2 );
    push();
    imageMode(CENTER );
    image (logo, 500, 250 );

    textSize(50);
    stroke(0, 0);
    strokeWeight(5);

    fill(255, 50 );
    boton ( color(255, 50, 0 ), 200, 560, 35) ; 
    rect(350, 400, 300, 100, 30 );

    pop();
    textAlign(LEFT);
    text ("CREDITOS", 380, 460);
    fill(255);
    text("PULSAR PARA INICIAR", 235, 625  );
  }
  if (pantalla==1) {
    image( ciudad, 0, 0 );

    noStroke();
    fill(255, 41, 41, 100);
    rect(0, 0, 1000, 700);
    noStroke();
    fill(0, 200);
    rect (0, 460, 1000, 400, 50 );
    texto (textos[1]);

    ////botones////

    rect( 100, 350, 300, 100, 50 );

    rect( 600, 350, 300, 100, 50 ); 

    fill(255);
    text("Salir afuera", 115, 415);
    push();

    textSize(25);

    text("Agarrar lo que puedas \n  y meterte al bunker", 615, 390 );

    pop();
  } else if (pantalla==2 ) {
    background (255, 0, 0 );

    image ( calabera, 450, 250, 100 - espacio*3, 100 - espacio*3 );
    fill(255);
    rect (300, 500, 400, 100, 10 );
    fill(0);
    text(" Reiniciar", 390, 565);
    fill(0);
    text("Moriste :(", 400, 400 );
  } else if (pantalla==3) {

    image ( fondo, espacio, espacio );
    image ( mujer1, espacio-350, 100 );
    image (hombre1, espacio+50, 100 );
    image (hijo1, 600, 100 ); 
    noStroke();
    fill(0, 200);
    rect (0, 460, 1000, 400, 50 );

    push();
    fill(255, 80);
    textSize(25);
    textAlign(CENTER, CENTER );
    text("DIA 1", 500, 490 );
    pop();

    texto (textos [2]);
    fill(255);
    push();

    rectMode( CENTER );
    rect( 160, 150, 200, 80, 50);  
    rect( 500, 150, 200, 80, 50);
    rect( 833, 150, 200, 80, 50 );
    pop();
    fill(0);
    textAlign(CENTER, CENTER);
    text("Esposa", 160, 140 );
    text ("Hombre", 500, 140) ;
    text("Hijo", 840, 140);
  } else if (pantalla==4) {
    image ( fondo, espacio, espacio);
    image ( mujer1, espacio-350, 100);
    image (hombre1, espacio+50, 100 );
    image (hijo1, 600, 100 ); 
    noStroke();
    fill(0, 200);
    rect (0, 460, 1000, 400, 50 );
    push();
    fill(255, 80);
    textSize(25);
    textAlign(CENTER, CENTER );
    text("DIA 2", 500, 490 );
    pop();
    texto (textos [3]);
    fill(255);

    push();

    rectMode( CENTER );
    rect( 160, 150, 200, 80, 50);  
    rect( 500, 150, 200, 80, 50);
    rect( 833, 150, 200, 80, 50 );
    pop();
    fill(0);
    textAlign(CENTER, CENTER);
    text("Esposa", 160, 140 );
    text ("Hombre", 500, 140) ;
    text("Hijo", 840, 140);
  } else if (pantalla==5) {
    image ( fondo, espacio, espacio);
    image (hombre1, espacio+50, 100);
    image (hijo1, 600, 100); 
    noStroke();
    fill(0, 200);
    rect (0, 460, 1000, 400, 50 );
    pushStyle();
    fill(255, 80);
    textSize(25);
    textAlign(CENTER, CENTER );
    text("DIA 3", 500, 490 );
    popStyle();
    texto (textos [4]);

    push();
    fill(255);
    rect (850, 600, 80, 50, 20 );
    pop();
    fill(0);
    text(">", 895, 618);
  } else if (pantalla==6) {
    background(77, 77, 77);
    image( mujer2, espacio - 50, espacio );
    fill(0, 200);
    rect (0, 460, 1000, 400, 50 );
    texto (textos [5]);
    push();

    fill(255);
    rect (850, 600, 80, 50, 20 );
    pop();

    fill(0);
    text(">", 895, 618);
  } else if (pantalla==7) {
    background(77, 77, 77);
    image( mujer2, espacio - 50, espacio  );
    fill(0, 200);
    rect (0, 460, 1000, 400, 50 );
    texto (textos[6] );   
    pushStyle();
    fill(255);
    rect(160, 150, 200, 80, 50);
    rect(600, 150, 200, 80, 50);
    popStyle();

    text("SI", 255, 185);
    text("NO", 700, 185);
  } else if (pantalla==8) {
    background (255, 0, 0 );
    image ( calabera, 450, 250, 100 - espacio*3, 100 - espacio*3 );
    fill(255);
    rect (300, 500, 400, 100, 10 );
    fill(0);

    text(" Reiniciar", 500, 540);
    fill(0);
    text( "Murio :´(", 530, 400 );
  } else if (pantalla==9) {
    image ( fondo, espacio, espacio );
    image ( mujer2, espacio-350, 100);
    image ( hombre1, espacio+50, 100);
    image ( hijo1, 600, 100); 
    noStroke();
    fill(0, 200);
    rect (0, 460, 1000, 400, 50 );

    push();
    fill(255, 80);
    textSize(25);
    textAlign(CENTER, CENTER );
    text("DIA 5", 500, 490 );
    pop();

    push();

    fill(255);
    rect (850, 600, 80, 50, 20 );
    pop();

    fill(0);
    text(">", 895, 618);
  } else if (pantalla==10 ) {
    image ( fondo, espacio, espacio );
    image ( mujer2, espacio-350, 100 );
    image ( hombre2, espacio+50, 100 );
    image ( hijo2, 600, 100); 
    noStroke();
    fill(0, 200);
    rect (0, 460, 1000, 400, 50 );

    push();
    fill(255, 80);
    textSize(25);
    textAlign(CENTER, CENTER );
    text("DIA 6", 500, 490 );
    texto (textos [7]);
    pop();

    push();

    fill(255);
    rect (850, 600, 80, 50, 20 );
    pop();

    fill(0);
    text(">", 895, 618);
  } else if (pantalla==11) {
    background (255, 0, 0 );
    pushStyle();
    rect (300, 500, 400, 100, 10 );
    fill(255);
    text(" Reiniciar", 500, 540);
    popStyle();
    fill(0);
    text( "FIN", 500, 400 );

    ///SEGUNDO FINAL///
  } else if (pantalla==12) {
    image ( fondo, espacio, espacio);
    image ( mujer1, espacio-350, 100);
    image (hombre1, espacio+50, 100 );
    image (hijo1, 600, 100 ); 
    noStroke();
    fill(0, 200);
    rect (0, 460, 1000, 400, 50 );
    push();
    fill(255, 80);
    textSize(25);
    textAlign(CENTER, CENTER );
    text("DIA 2", 500, 490 );
    pop();
    texto (textos [3]);
    fill(255);

    push();

    rectMode( CENTER );
    rect( 160, 150, 200, 80, 50);  
    rect( 500, 150, 200, 80, 50);
    rect( 833, 150, 200, 80, 50 );
    pop();
    fill(0);
    textAlign(CENTER, CENTER);
    text("Esposa", 160, 140 );
    text ("Hombre", 500, 140) ;
    text("Hijo", 840, 140);
  } else if (pantalla==13) {
    image ( fondo, espacio, espacio);
    image ( mujer1, espacio-350, 100);

    image (hijo1, 600, 100); 
    noStroke();
    fill(0, 200);
    rect (0, 460, 1000, 400, 50 );
    pushStyle();
    fill(255, 80);
    textSize(25);
    textAlign(CENTER, CENTER );
    text("DIA 3", 500, 490 );
    popStyle();
    texto (textos [8]);

    push();
    fill(255);
    rect (850, 600, 80, 50, 20 );
    pop();
    fill(0);
    text(">", 895, 618);
  } else if (pantalla==14) {
    image ( fondo, espacio, espacio);
    image (hombre1, espacio+50, 100 );
    image ( mujer1, espacio-350, 100);

    image (hijo1, 600, 100); 
    noStroke();
    fill(0, 200);
    rect (0, 460, 1000, 400, 50 );
    pushStyle();
    fill(255, 80);
    textSize(25);
    textAlign(CENTER, CENTER );
    text("DIA 4", 500, 490 );
    popStyle();
    push();
    fill(255);
    rect (850, 600, 80, 50, 20 );
    pop();
    fill(0);
    text(">", 895, 618);
  } else if (pantalla==15) {
    image ( fondo, espacio, espacio);
    image ( mujer1, espacio-350, 100);
    image (hombre3, espacio+50, 100 );
    image (hijo1, 600, 100); 
    noStroke();
    fill(0, 200);
    rect (0, 460, 1000, 400, 50 );
    pushStyle();
    fill(255, 80);
    textSize(25);
    textAlign(CENTER, CENTER );
    text("DIA 5", 500, 490 );
    popStyle();
    texto (textos [9]);

    push();
    fill(255);
    rect (850, 600, 80, 50, 20 );
    pop();
    fill(0);
    text(">", 895, 618);
  } else if (pantalla==16) {
    background (255, 0, 0 );
    image ( calabera, 450, 250, 100 - espacio*3, 100 - espacio*3 );
    pushStyle();
    rect (300, 500, 400, 100, 10 );
    fill(255);
    text(" Reiniciar", 500, 540);
    popStyle();
    fill(0);
    text( "Moriste...", 500, 400 );
    //----FINAL TRES---//
  } else if (pantalla==17) {
    image ( fondo, espacio, espacio);
    image ( mujer1, espacio-350, 100);
    image (hombre1, espacio+50, 100 );
    image (hijo1, 600, 100 ); 
    noStroke();
    fill(0, 200);
    rect (0, 460, 1000, 400, 50 );
    push();
    fill(255, 80);
    textSize(25);
    textAlign(CENTER, CENTER );
    text("DIA 2", 500, 490 );
    pop();
    texto (textos [3]);
    fill(255);

    push();

    rectMode( CENTER );
    rect( 160, 150, 200, 80, 50);  
    rect( 500, 150, 200, 80, 50);
    rect( 833, 150, 200, 80, 50 );
    pop();
    fill(0);
    textAlign(CENTER, CENTER);
    text("Esposa", 160, 140 );
    text ("Hombre", 500, 140) ;
    text("Hijo", 840, 140);
  } else if (pantalla==18) {
    image ( fondo, espacio, espacio);
    image (hombre1, espacio+50, 100 );
    image ( mujer1, espacio-350, 100);

    noStroke();
    fill(0, 200);
    rect (0, 460, 1000, 400, 50 );
    pushStyle();
    fill(255, 80);
    textSize(25);
    textAlign(CENTER, CENTER );
    text("DIA 4", 500, 490 );
    popStyle();
    push();
    fill(255);
    rect (850, 600, 80, 50, 20 );
    pop();
    fill(0);
    text(">", 895, 618);
  } else if (pantalla==19) {
    image ( fondo, espacio, espacio);
    image (hombre1, espacio+50, 100 );
    image ( mujer1, espacio-350, 100);

    noStroke();
    fill(0, 200);
    rect (0, 460, 1000, 400, 50 );
    pushStyle();
    fill(255, 80);
    textSize(25);
    textAlign(CENTER, CENTER );
    text("DIA 5", 500, 490 );
    popStyle();
    push();
    fill(255);
    rect (850, 600, 80, 50, 20 );
    pop();
    fill(0);
    text(">", 895, 618);
  } else if (pantalla==20) {
    image ( fondo, espacio, espacio);
    image (hombre1, espacio+50, 100 );
    image ( mujer1, espacio-350, 100);

    noStroke();
    fill(0, 200);
    rect (0, 460, 1000, 400, 50 );
    pushStyle();
    fill(255, 80);
    textSize(25);
    textAlign(CENTER, CENTER );
    text("DIA 6", 500, 490 );
    popStyle();
    push();
    fill(255);
    rect (850, 600, 80, 50, 20 );
    pop();
    fill(0);
    text(">", 895, 618);
    texto (textos[10]);
  } else if (pantalla==21) {
    background (255, 0, 0 );
    image ( calabera, 450, 250, 100 - espacio*3, 100 - espacio*3 );
    pushStyle();
    rect (300, 500, 400, 100, 10 );
    fill(255);
    text(" Reiniciar", 500, 540);
    popStyle();
    fill(0);
    text( "FIN", 500, 400 );
  }
  //---CREDITOS---//
  if (pantalla==22) {
    background (0);
    fill(255);
    textAlign(CENTER);
    text ("BENJAMIN ALMEIDA\nCOM.3\nLEJAJO: 88271/9", width/2, 100);
    pushStyle();
    fill(255);
    rect (300, 500, 400, 100, 10 );
    popStyle();
    fill(0);
    text(" SALIR", 450, 550);
  }
}





void mouseReleased() {

  //---INICIO---//

  if ((mouseX > 200)&&(mouseX<800)&&(mouseY>560)&&(mouseY < 660)&& pantalla == 0 ) {
    pantalla= 1 ;
  } else if ((mouseX>100)&&(mouseX <400)&&(mouseY>350)&&(mouseY < 450 )&& pantalla==1 ) {
    pantalla=2 ;
  } else if ((mouseX>300)&&(mouseX<700)&&(mouseY>500)&&(mouseY <600) && pantalla ==2 ) {
    pantalla=0;
  } else if ((mouseX>600)&&(mouseX<900)&&(mouseY > 350 )&& ( mouseY < 450 )&& pantalla ==1) {
    pantalla=3;


    //---PRIMER FINAL----//
  } else if ((mouseX>80)&&(mouseX<280)&&(mouseY>150)&&(mouseY<230) && pantalla==3) {
    pantalla=4;
  } else if ((mouseX>80)&&(mouseX<280)&&(mouseY>150)&&(mouseY<230) && pantalla==4) {
    pantalla=5;
  } else if ((mouseX>850)&&(mouseX<900)&&(mouseY>600)&&(mouseY<650) && pantalla==5) {
    pantalla=6;
  } else if ((mouseX>850)&&(mouseX<900)&&(mouseY>600)&&(mouseY<650) && pantalla==6) {
    pantalla=7;
  } else if ((mouseX>600)&&(mouseX<800)&&(mouseY>150)&&(mouseY<230)&& pantalla==7 ) {
    pantalla=8;
  } else if ((mouseX>300)&&(mouseX<700)&&(mouseY>500)&&(mouseY <600) && pantalla ==8 ) {
    pantalla=0;
  } else if ((mouseX>160)&&(mouseX<360)&&(mouseY>150)&&(mouseY<230)&&pantalla ==7) {
    pantalla=9;
  } else if ((mouseX>850)&&(mouseX<900)&&(mouseY>600)&&(mouseY<650) && pantalla==9) {
    pantalla=10;
  } else if ((mouseX>850)&&(mouseX<900)&&(mouseY>600)&&(mouseY<650) && pantalla==10) {
    pantalla=11;
  } else if ((mouseX>300)&&(mouseX<700)&&(mouseY>500)&&(mouseY <600) && pantalla ==11 ) {
    pantalla=0;
    //---SEGUNDO FINAL---//
  } else if ((mouseX>400)&&(mouseX<600)&&(mouseY>100)&&(mouseY<180)&& pantalla==3) {
    pantalla=12;
  } else if ((mouseX>400)&&(mouseX<600)&&(mouseY>100)&&(mouseY<180)&& pantalla==12) {
    pantalla =13;
  } else if ((mouseX>850)&&(mouseX<900)&&(mouseY>600)&&(mouseY<650) && pantalla==13) {
    pantalla=14;
  } else if ((mouseX>850)&&(mouseX<900)&&(mouseY>600)&&(mouseY<650) && pantalla==14) {
    pantalla=15;
  } else if ((mouseX>850)&&(mouseX<900)&&(mouseY>600)&&(mouseY<650) && pantalla==15) {
    pantalla=16;
  } else if ((mouseX>300)&&(mouseX<700)&&(mouseY>500)&&(mouseY <600) && pantalla ==16 ) {
    pantalla=0;
  }
  //---FINAL TRES---//

  else if ((mouseX>733)&&(mouseX<933)&&(mouseY>125)&&(mouseY<175)&&pantalla==3) {
    pantalla=17;
  } else if ((mouseX>733)&&(mouseX<933)&&(mouseY>125)&&(mouseY<175) && pantalla==17) {
    pantalla=18;
  } else if ((mouseX>850)&&(mouseX<900)&&(mouseY>600)&&(mouseY<650) && pantalla==18) {
    pantalla=19;
  } else if ((mouseX>850)&&(mouseX<900)&&(mouseY>600)&&(mouseY<650) && pantalla==19) {
    pantalla=20;
  } else if ((mouseX>850)&&(mouseX<900)&&(mouseY>600)&&(mouseY<650) && pantalla==20) {
    pantalla=21;
  } else if ((mouseX>300)&&(mouseX<700)&&(mouseY>500)&&(mouseY <600) && pantalla ==21  ) {
    pantalla=0;
  }
  if ((mouseX > 350)&&(mouseX<950)&&(mouseY>400)&&(mouseY < 500)&& pantalla == 0 ) {
    pantalla=22;
  }else if ((mouseX>300)&&(mouseX<700)&&(mouseY>500)&&(mouseY <600) && pantalla ==22 ) {
    pantalla=0;
  }
}
// 350 , 400 , 300 , 100 , 30

