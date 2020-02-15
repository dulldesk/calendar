void setup() {
  frameRate(24);
  size(640, 1136); 
  
  //surface.setResizable(true); // to change size: surface.setSize(w,h);
  
  try {    
    year = Integer.parseInt(loadStrings("year.txt")[0]);
  } catch (Exception e) {
    year = (Calendar.getInstance()).get(Calendar.YEAR);
  }
  // leap year
  if (year%4==0) dayNos[1]=29;
  
  firstDay = first(); 
  
  init();
}

void draw() {
  background(bkgd);
  display();
  saveButtons();
  if (keyPressed && frameCount > 5) {
    if (key == DELETE) exit();
    monthDir();
    frameCount=0;
  }
  if (mI>=12) mI=0;
  else if (mI<0) mI=11;
}
