final String [] days = {"S", "M", "T", "W", "T", "F", "S"};
final String [] months = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
final int [] dayNos = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
final color bkgd = color(32, 27, 171);
int [][] week = new int[12][7]; // first week of each month
int mI=0; // month index

// changes by year
final int firstDay = 3; // wedn, jan 1 2020 ; day index

void setup() {
  frameRate(24);
  size(640, 1136); 
  for (int i=0; i<12; i++) {
    for (int j=0; j<7; j++) week[i][j]=0;
  }
  init();
}
void init() {
  // dayIn day index
  for (int m=0, dayInd=firstDay; m<12; m++) {
    int date=1;
    for (int i=dayInd; i<7; i++)
      week[m][i] = date++;
    dayInd=0;
    for (; date<=dayNos[m]; date++) 
      if (++dayInd>=7) dayInd=0;
  }
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
