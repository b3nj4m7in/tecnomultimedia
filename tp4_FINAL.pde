 /*BENJAMIN ALMEIDA TP-FINAL COM3*/ 
 //https://youtu.be/eUGjgI6YIu4
Juego j1 ;
Juego2 j2 ;
void setup (){
  size (800  , 600 ) ;
  j1 = new Juego ();
}

void draw (){ 
   j1.draw();
}
//void mouseReleased(){
void mousePressed(){  
  j1.pantalla ();
}
