void boton( color tinte, int posx ,  int posy, int tam ) {
  if (mouseOver(posx, posy)) {
    fill(150, 0, 0);
  } else {
    fill(tinte);
  }
  rect (posx, posy, 600, 100, 30 );
  
}

boolean mouseOver(int posx, int posy) {
  if (mouseX > posx && mouseX<posx+600 && mouseY>posy && mouseY<posy+100) {
    return true;
  } else {
    return false;
  }
}
