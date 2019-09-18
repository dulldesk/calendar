void monthDir() {
  int temp = (int)(key-'0');
  if (keyCode == LEFT) mI--;
  else if (temp > 0 && temp < 10) mI = temp-1;
  else {
    switch (key) {
    case BACKSPACE:
    case 'a':
    case 'A':
    case '[':
      mI--;
      break;
    case '0':
      mI=9;
      break;
    case '-':
      mI=10;
      break;
    case '=':
      mI=11;
      break;
    case 'b':
    case 'B':
      if (keyPressed && frameCount>5) {
        showButtons=!showButtons;
        frameCount=0;
      }
      break;
    default: 
      mI++;
    }
  }
}
