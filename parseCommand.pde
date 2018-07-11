void parseCommand() {
  // print the string when a newline arrives:
  if (stringComplete) {
    inputString.trim();
    int separatorIndex = inputString.indexOf(',');
    idString = inputString.substring(0, separatorIndex);
    commandString = inputString.substring(separatorIndex + 1, inputString.length()-2);
    if (int(commandString) == 0) {
      println("!!!");
    }
    label4.setText("Input: " + idString + " Value: " + commandString);
    // clear the string:
    inputString = "";
    idString = "";
    commandString = "";
    stringComplete = false;
  }
}
