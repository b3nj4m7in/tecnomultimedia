class Textos {
  String textos [] ;
  String texto_ ;
  float x, y ;


  Textos () {
    textos= new String[11];
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

    textSize(25);

    textLeading(30);

    textAlign(CENTER, CENTER);

    x = height/2 ;
    y = width-20 ;
  }

  void tex1 () {
    text( textos[1], 0, x, y, 400); 
  }
}
