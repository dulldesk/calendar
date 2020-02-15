int first() {
  Calendar findFirst = Calendar.getInstance();
  findFirst.setFirstDayOfWeek(Calendar.SUNDAY);
  findFirst.set(year,0,1,12,0,0);  
  return findFirst.get(Calendar.DAY_OF_WEEK)-1;  
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
/*
Sunday: 0
Monday: 1
Tuesday: 2
Wednesday: 3
Thursday: 4
Friday: 5
Saturday: 6
*/
