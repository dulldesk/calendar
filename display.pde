final int leftMar = 90; // left margin
final int grInt = 500; // grand interval (space btwn no. * 7)
final int yInt = 67; // interval btwn wks
void display() {
  fill(255);
  // month title 
  textAlign(CENTER);
  textSize(40);
  text(months[mI], width/2, height/2-25); 

  textSize(30);
  textAlign(LEFT);

  // days
  for (int i=0; i<7; i++) {
    text(days[i], 4+leftMar+i*(grInt/7), height/2+yInt);
  }

  // 1st wk
  for (int i=0; i<7; i++) {
    text((week[mI][i]!=0 ? ""+week[mI][i] : " "), leftMar+i*(grInt/7), height/2+yInt*2);
  }

  // rem of month
  int x=leftMar, y=height/2+yInt*3;
  for (int date = week[mI][6]+1; date<=dayNos[mI]; date++) {
    text(date, x, y);
    x+=grInt/7;
    if (x >= leftMar+grInt-7) {
      x=leftMar;
      y+=yInt;
    }
  }
}
