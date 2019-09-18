boolean showButtons =true;
boolean saveAll =false; // redundant?
int saveCnt=0;
void saveButtons() {
  if (showButtons) {
    final int x=width-220, y=50, w=185, h=55;
    stroke(255);
    strokeWeight(3);
    fill(#4B96FA);
    boolean saveBtn = button(x, y, w, h, false);
    boolean saveAllBtn = button(x, y*2+25, w, h, false);
    if (saveBtn && frameCount > 5) { //"Save" 
      showButtons=false;
      saveCnt=1;
    } else if (saveAllBtn && frameCount > 5) { //"Save all" 
      showButtons=false;
      saveAll=true;
      saveCnt=12;
    } else {
      button(x, y, w, h, true); 
      button(x, y*2+25, w, h, true);
      textAlign(CENTER);
      textSize(28);
      fill(255);
      text("Save", x+w/2, y+2*h/3);
      text("Save All", x+w/2, y*2+25+2*h/3);
    }
  }
  if (saveCnt>0) saveImgs();
}

void saveImgs() {
  save((saveAll ? (mI+1)+" " : "")+months[mI]+".jpg");
  showButtons = false; // safeguard;
  if (--saveCnt>=1) mI++;
  else {
    saveAll=false;
    showButtons=true;
    saveCnt=0;
    frameCount=0; // safeguard
  }
}
