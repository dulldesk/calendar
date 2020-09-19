char [] allowedKeys = {'A','D','W','S','H','J','K','L'};

void changeMonth() {
  if (keyCode == LEFT || keyCode == UP) mI--;
  else if (keyCode == RIGHT || keyCode == DOWN) mI++;
  else if (key >= '1' && key < '1'+12) {
    mI = key - '1';
  }
  else {
    switch (key >= 'A' && key <= 'Z' ? key + ('a'-'A') : key) {
      case BACKSPACE:
      case 'a':
      case 'w':
      case 'h':
      case 'k':
      case '[':
        mI--;
        break;
      case 'b':
        showButtons=!showButtons;
        break;
      default: 
        for (char c : allowedKeys) {
          if (key == c || key == c + ('a'-'A')) {
            mI++;
            break;
          }
        }
    }
  }
}
