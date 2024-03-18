String [] piLines;
String piDigits;
String birthday = "//02272727";
//String britishBirthday = birthday.substring(3, 5) + "/" + birthday.substring(0, 2) + "/" + birthday.substring(6, 10);
int subnumberToFind = 0;
void setup() {
  frameRate(600);
  size(200, 200);
  piLines = loadStrings("pi-tenmillion.txt");
  Pi.setPi(piLines[0]);
  
  for (String currentGoal : Pi.getSubs(birthday)) {
    if (Pi.findInPi(currentGoal) != -1) {
      System.out.println("Found \'" + currentGoal + "\' at position " + Pi.findInPi(currentGoal));
      
      if (subnumberToFind + 1 >= birthday.length() - 2) {
        System.out.println("Found all thingies :D");
        break;
      }
      
      subnumberToFind += 1;
    } else {
      System.out.println("Didn't find \'" + currentGoal + "\' :(");
      noLoop();
      break;
    }
  }
}
//substring is substring([2, 4}) Pi.findInPi(Pi.getSubs(birthday)[subnumberToFind])
void draw() {
  for (int i = 0; i < 10; i++) {
    if (Pi.findRandomInPi(13) != -1) {
      System.out.println("Found \'" + Pi.getStringToFind() + "\' at position " + Pi.getPosition());
    }
  }
}

void mouseClicked() {
  System.out.println("current string: " + Pi.getStringToFind());
}
