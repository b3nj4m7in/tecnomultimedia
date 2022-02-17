class Textos {
  String textos [] ;
  String texto_ ;
  float x, y ;


  Textos () {
    textos= new String[12];
    textos [1] = "Empieza a sonar la  alarma de evacuación , tienes 60 seg para tomar lo que sea  , porque una bomba atómica está por caer en la ciudad.";
    textos [2] = "Tienes que darle de beber a uno de los tres..." ; 
    textos [3] = "Al tener pocos suministros  , \n  tienes que mandar a uno de los tres a buscar..." ;
    textos [4] = "Vendra el DIA 4..." ; 
    textos [11] = "Jugar al MINI JUEGO " ;
    textos [5] = "¡¡OH NO0 , ESTA HERIDA!!" ;
    textos [6] = "¿Quieres curarla?"; // si , no  dia 4
    textos [7] = "¡AHORA TODOS ESTAN INFECTADOS POR UN VIRUS LETAL!"; //dia 6
    textos [8] = "Vendra al siguiente dia..." ;
    textos [9] = "Por ocaciones  de la bomba atomica comsumiste los humos nucleares ocacionandote la muerte... " ;  // hombre
    textos [10] ="Creo que tu hijo se perdio , ocacionando la muerte de ustedes dos por falta de suministros.." ; // viene el dia 6  el Hijo


    textSize(25);

    textLeading(30);

    textAlign(CENTER, CENTER);

    x = height/2 ;
    y = 700 ;
  }

  void tex1 () {
    text( textos[1], 50, x, y, 300);
  }
  void tex2() {
    text( textos[2], 50, x, y, 300);
  }
  void tex3() {
    text( textos[3], 50, x, y, 300);
  }
  void tex4() {
    text( textos[4], 50, x, y, 300);
  }
  void tex5() {
    text( textos[5], 50, x, y, 300);
  }
  void tex6() {
    text( textos[6], 50, x, y, 300);
  }
  void tex7() {
    text( textos[7], 50, x, y, 300);
  }
  void tex8() {
    text( textos[8], 50, x, y, 300);
  }
  void tex9() {
    text( textos[9], 50, x, y, 300);
  }
  void tex10() {
    text( textos[10], 50, x, y, 300);
  }
    void tex11() {
    text( textos[11], 50, x, y, 300);
  }
}
