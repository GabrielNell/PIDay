public class Pi {
  private static String pi;
  private static long piLength; 
  private static int currentStartLocation;
  private static String stringToFind;
  
  public static String pi() {
    return pi;
  }

  public static void setPi(String in_) {
    pi = in_;
  }

  public static long getPiLength() {
    piLength = pi.length();
    return piLength;
  }
  
  public static int getPosition() {
    return currentStartLocation;
  }
  
  public static String getStringToFind() {
    return stringToFind;
  }

  public static String [] getSubs(String s_) {
    String [] returnArray = new String[s_.length()];
    String adjustedString = s_.replace("/", "");
    
    for (int i = 0; i < adjustedString.length(); i++) {
      returnArray[i] = adjustedString.substring(0, i + 1);
    }
    return returnArray;
  }

  public static int findInPi(String in_) {
    for (int i = 0; i < getPiLength() - in_.length(); i++) {
      if (in_.equals(pi.substring(i, i + in_.length()))) {
        return i;
      }
    }
    return -1;
  }
  
  public static int findRandomInPi(int lengthOfDigits) {
    stringToFind = "";
    for (int i = 0; i < lengthOfDigits; i++) {
      stringToFind = stringToFind + (int)(Math.random() * 10);
    }
    currentStartLocation = findInPi(stringToFind);
    return findInPi(stringToFind);
  }
}

 
