class beskeder {
  String tid_815 = "8:15-9:15";
  String tid_935 = "9:35-10:35";
  String tid_1045= "10:45-11:45";
  String tid_1215 = "12:15-13:15";
  String tid_1315 = "13:25-14:25";
  String time1;
  String time2;
  String time3;
  String time4;
  String time5;

  String[] lokale = {"320", "318", "317", "316", "314", "308", "307", "367", "366", "304", "349", "350", "352", "354", "355"};



  void time1() {
    for(int i = 0; i < 15; i++)
    {
      if(lokale1 == i)
      {
        time1 = "D2" + lokale[i];
      }
    }
  }
  void time2() {
    for(int i = 0; i < 15; i++)
    {
      if(lokale2 == i)
      {
        time2 = "D2" + lokale[i];
      }
    }
  }
  void time3() {
    for(int i = 0; i < 15; i++)
    {
      if(lokale3 == i)
      {
        time3 = "D2" + lokale[i];
      }
    }
  }
  void time4() {
    for(int i = 0; i < 15; i++)
    {
      if(lokale4 == i)
      {
        time4 = "D2" + lokale[i];
      }
    }
  }
  void time5() {
    for(int i = 0; i < 15; i++)
    {
      if(lokale5 == i)
      {
        time5 = "D2" + lokale[i];
      }
    }
  }
}