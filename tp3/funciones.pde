void inicio () {
  fill (0);
  textSize (50);
 text ("World's Hardest Game", width/2, height/2 - 200); 
 textSize (40);
 text ("JUGAR", width/2, height/2 ); 
 text ("INSTRUCCIONES", width/2 , height/2 + 100 ); 
 text ("CREDITOS", width/2 , height/2 + 200 ); 
 efecto (random (width/2,width), random (0, height));
}   

void efecto (float LugarX1, float LugarY1){
 if (frameCount % 2== 0){
  for (float a = 0; a <= width; a += 10){
  fill (0,50,255);
  stroke (0,0,0,0);
   circle (LugarX1 + a, LugarY1, 20);}
 }
}

void juego (){
background (212,183,227);
efecto (random (0,width), random (0, height));
   
   strokeWeight  (1);
   stroke (0,0,0,255);
fill (255);
rect (0, height/2 - 100, width + 1,  200); 
strokeWeight  (0);
fill (0,255,0);
rect (30, 380, 40,40);
strokeWeight  (1);
fill (0);
rect (750, 300, 10, 200);
fill (255,0,0);
float limiteX= constrain (PosX, 10 , width);
float limiteY = constrain (PosY, 310, 490);

float distancia = dist (PosX, PosY, PX [0], py);
float distancia1 = dist (PosX, PosY, PX [1], py);
float distancia2 = dist (PosX, PosY, PX [2], py);
float distancia3 = dist (PosX, PosY, PX [3], py);
float distancia4 = dist (PosX, PosY, PX [4], py);
float distancia5 = dist (PosX, PosY, PX [5], py);

if (distancia <= 20 ||distancia1 <= 20  ||distancia2 <= 20  || distancia3 <= 20 || distancia4 <=20 || distancia5 <=20){
 Pantalla = 3; }

ellipse (limiteX, limiteY, tam, tam);
py = py + vely;

for (int i = 0; i < 6; i+= 1){
  fill (0,0,255);
ellipse (PX [i] ,py, tam,tam);}

if (py == 490 || py == 310) {
vely*=-1;} }

//-----------------------------



void ganar (){
background (139,215,255);
textSize (80);
fill (0);
 text("¡¡GANASTE!!", width/2, height/2 - 100);
textSize (20);
 text ("presionar (i) \npara ver los creditos", width/2, height/2);
}

void perder (){
background (255,0,0);
textSize (100);
fill (0);
 text("GAME OVER", width/2, height/2-100); 
textSize (20);
 text("presionar (r) \npara volver a jugar", width/2, height/2);
}

void creditos (){
background (0);
fill (255);
  textSize (40);
 text ("World's Hardest Game\nCreador: Juan Martin Bigot", width/2, height/2 -200);
  textSize (20);
  text ("presionar (p) para ir al inicio", width/2, height/2 + 150);
}


void instrucciones (){
 fill (0);
 textSize (50);
  text ("INSTRUCCIONES", width/2, height/2 - 250 ); 
 textSize (30);
  text ("Objetivo: llegar a la meta\n sin tocar a los enemigos", width/2, height/2 - 100); 
 textSize (25);
 fill (255);
 rect (200, 580, 400, 40);
 fill (0);
  text ("Presionar la (D) para ir hacia la derecha \nPresionar la (A) para ir hacia la izquierda \nPresionar la (w) para ir hacia arriba \nPresionar la (S) para ir hacia abajo \n\nPresionar la (p) para ir al inicio", width/2, height/2 + 100 ); 
  efecto (random (0,width), random (0, height));
}
