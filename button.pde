// button method: implement a rectangular button and returns whether the button has been clicked
boolean button(float x, float y, float w, float h, boolean drawButton) {
  // method parameters:
  // (x,y) is the centre coordinate of the button
  // w is the width of the button
  // h is the height of the button
  // drawButton will draw the button if true

  rectMode(CORNER);
  if (drawButton) // if true, a rectangle in the button's location will be drawn
    rect(x, y, w, h);
  // if the mouse is clicked on the area defined by the parameters
  if (mousePressed && mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h)
    return true; // true defines that the button has been pressed
  return false; // false defines that the button has not been pressed
}
