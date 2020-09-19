void setup() {
  frameRate(24);
  size(740, 1334);
  
  //frame.setResizable(true);
  surface.setResizable(true);
  
  loadConfig();
  
  // leap year
  if (year%4==0) dayNos[1]=29;
  
  firstDay = first(); 
  
  init();
}

void draw() {
  background(bkgd);
  
  display();
  drawSaveButtons();
  
  if (keyPressed && frameCount > frameCountIntv) {
    if (key == DELETE) exit();
    changeMonth();
    frameCount = 0;
  }
  if (mI>=12) mI=0;
  else if (mI<0) mI=11;
}
