int first() {
  Calendar findFirst = Calendar.getInstance();
  findFirst.setFirstDayOfWeek(Calendar.SUNDAY);
  findFirst.set(year,0,1,12,0,0);  
  return findFirst.get(Calendar.DAY_OF_WEEK)-1;  
}

void init() {
  // dayInd day index
  for (int m=0, dayInd=firstDay; m<12; m++) {
    int date=1;
    for (int i=dayInd; i<7; i++) {
      week[m][i] = date++;
    }
    dayInd=0;
    for (; date<=dayNos[m]; date++) {
      if (++dayInd>=7) dayInd=0;
    }
  }
}

void loadDimension(String pref, int def, char type) { 
  int val;
  try {
    val = Integer.parseInt(pref);
    if (val < 300 || val > 6000) throw new IllegalArgumentException();
  } catch (Exception e) {
    val = def;
  }
  
  surface.setSize(type == 'w' ? val : width,type == 'h' ? val : height);
}

void loadWidth(String pref) {
  loadDimension(pref, 640, 'w');
}

void loadHeight(String pref) {
  loadDimension(pref, 1136, 'h');
}

void loadYear(String pref) {
  try { 
    year = Integer.parseInt(pref);
  } catch (Exception e) {
    year = (Calendar.getInstance()).get(Calendar.YEAR);
  }
}

void loadBkgdColour(String pref) {
  try {
    String [] temp = pref.split("\\s*,\\s*");
    if (temp.length != 3) throw new IllegalArgumentException();
    int [] col = new int[3];
    for (int i=0;i<3;i++) col[i] = Integer.parseInt(temp[i]);
    bkgd = color(col[0], col[1], col[2]);
  } catch (Exception e) {
    bkgd = color(32, 27, 140);
  }
}

void loadConfig() {
  String [] config = loadStrings("config.txt");
  
  // load defaults
  loadYear("");
  loadWidth("");
  loadHeight("");
  loadBkgdColour("");
  
  for (String pref : config) {
   pref = pref.trim().toLowerCase();
   if (pref.startsWith(";") || pref.startsWith("#") || pref.length() == 0) continue;
   
   String [] tokens = pref.split("\\s*[=:]\\s*");
   if (tokens[0].equals("year")) loadYear(tokens[1]);
   else if (tokens[0].equals("width")) loadWidth(tokens[1]);
   else if (tokens[0].equals("height")) loadHeight(tokens[1]);
   else if (tokens[0].equals("bkgd")) loadBkgdColour(tokens[1]);
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
