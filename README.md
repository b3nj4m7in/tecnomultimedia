
////---------Benjamin Almeida COM Nº3---------////


//ENLACE DEL VIDEO : https://youtu.be/TbUh0th1c24

Juego j1;
void setup() {
  size(800, 600);
  j1 = new Juego (9);
}
void draw () {
  j1.update();
  j1.draw();
}
void keyPressed() {
  j1.teclado ( keyCode );
}
void mouseReleased(){
  
  j1.estado(); 
}
