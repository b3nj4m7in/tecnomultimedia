class Botones {
  float x, y ;
  int tam ;

  Botones() {
    x = 200 ;
    y = 300 ;
  }
  void boton1() {
    pushStyle();
    noStroke();
    fill(255, 0, 10);
    rect(300, 500, 200, 90, 28 );
    popStyle();
  }
  void boton2() {
    pushStyle();
    rectMode(CENTER);
    noStroke();
    fill(255, 0, 10);
    rect(400 , 400, 180, 70, 28 );
    popStyle();
  }
}
