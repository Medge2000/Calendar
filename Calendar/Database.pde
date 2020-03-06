class Database {
  int[][] data = new int[367][3];
  int l, m;

  Database() {
    if (StartDay == "Monday")   
      l = -1;
    if (StartDay == "Tuesday")   
      l = 0;
    if (StartDay == "Wednesday")   
      l = 1;
    if (StartDay == "Thursday")   
      l = 2;
    if (StartDay == "Friday")   
      l = 3;
    if (StartDay == "Saturday")   
      l = 4;
    if (StartDay == "Sunday")   
      l = 5;



    m = l;

    for (int i = 0; i < 367; i++) {
      data[i][0] = i;
    }

    for (int i = 0; i < 367; i++) {
      if (l == 14) 
        l = 0;


      l += 1;

      if (m == 7) 
        m = 0;


      m += 1;

      data[i][1] = l;
      data[i][2] = m;
    }
  }

  void display() {
    for (int i = 0; i < 365; i++) {
      for (int j = 0; j < 3; j++) {
        fill(0, 255, 255);
        textSize(10);
        text(data[i][j], i*15, 20+(j*30));
      }
    }
  }
}
