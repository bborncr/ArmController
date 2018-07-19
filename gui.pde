/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void slider1_change1(GSlider source, GEvent event) { //_CODE_:slider1:976052:
  //println("slider1 - GSlider >> GEvent." + event + " @ " + millis());
  myPort.clear();
  myPort.write("0,"+slider1.getValueI()+"\n");
} //_CODE_:slider1:976052:

public void slider2d1_change1(GSlider2D source, GEvent event) { //_CODE_:slider2d1:884091:
  //println("slider2d1 - GSlider2D >> GEvent." + event + " @ " + millis());
  float x = slider2d1.getValueXI();
  float y = slider2d1.getValueYI();
  label2.setText("x: "+x);
  label3.setText("y: "+y);
  float z = slider1.getValueI();
  int g = slider5.getValueI();
  float w = slider6.getValueI();
  Arm(x, y, z, g, w, 90);
} //_CODE_:slider2d1:884091:

public void dropList1_click1(GDropList source, GEvent event) { //_CODE_:dropList1:784376:
  //println("dropList1 - GDropList >> GEvent." + event + " @ " + millis());
  int i = dropList1.getSelectedIndex();
  myPort.clear();
  myPort.stop();
  myPort = new Serial(this, Serial.list()[i], 38400);
  myPort.bufferUntil('\n');
} //_CODE_:dropList1:784376:

public void slider2_change1(GSlider source, GEvent event) { //_CODE_:slider2:746496:
  //println("slider2 - GSlider >> GEvent." + event + " @ " + millis());
  myPort.clear();
  myPort.write("1,"+slider2.getValueI()+"\n");
} //_CODE_:slider2:746496:

public void slider3_change1(GSlider source, GEvent event) { //_CODE_:slider3:959192:
  //println("slider3 - GSlider >> GEvent." + event + " @ " + millis());
  myPort.clear();
  myPort.write("2,"+slider3.getValueI()+"\n");
} //_CODE_:slider3:959192:

public void slider4_change1(GSlider source, GEvent event) { //_CODE_:slider4:505224:
  //println("slider4 - GSlider >> GEvent." + event + " @ " + millis());
  myPort.clear();
  myPort.write("3,"+slider4.getValueI()+"\n");
} //_CODE_:slider4:505224:

public void slider5_change1(GSlider source, GEvent event) { //_CODE_:slider5:865439:
  //println("slider5 - GSlider >> GEvent." + event + " @ " + millis());
  myPort.clear();
  myPort.write("4,"+slider5.getValueI()+"\n");
} //_CODE_:slider5:865439:

public void checkbox1_clicked1(GCheckbox source, GEvent event) { //_CODE_:checkbox1:806103:
  //println("checkbox1 - GCheckbox >> GEvent." + event + " @ " + millis());
  if (checkbox1.isSelected()) {
   slider5.setValue(89);
  } else {
   slider5.setValue(142);
  }
} //_CODE_:checkbox1:806103:

public void slider6_change1(GSlider source, GEvent event) { //_CODE_:slider6:869250:
  println("slider6 - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:slider6:869250:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Controlador Brazo");
  slider1 = new GSlider(this, 320, 10, 200, 50, 20.0);
  slider1.setShowValue(true);
  slider1.setShowLimits(true);
  slider1.setLimits(90, 0, 180);
  slider1.setEasing(10.0);
  slider1.setNumberFormat(G4P.INTEGER, 0);
  slider1.setOpaque(false);
  slider1.addEventHandler(this, "slider1_change1");
  slider2d1 = new GSlider2D(this, 31, 54, 260, 220);
  slider2d1.setLimitsX(100.0, 0.0, 200.0);
  slider2d1.setLimitsY(100.0, 0.0, 200.0);
  slider2d1.setNumberFormat(G4P.INTEGER, 0);
  slider2d1.setOpaque(true);
  slider2d1.addEventHandler(this, "slider2d1_change1");
  dropList1 = new GDropList(this, 120, 20, 170, 80, 3);
  dropList1.setItems(loadStrings("list_784376"), 0);
  dropList1.addEventHandler(this, "dropList1_click1");
  slider2 = new GSlider(this, 320, 70, 200, 50, 20.0);
  slider2.setShowValue(true);
  slider2.setShowLimits(true);
  slider2.setLimits(90, 0, 180);
  slider2.setEasing(10.0);
  slider2.setNumberFormat(G4P.INTEGER, 0);
  slider2.setOpaque(false);
  slider2.addEventHandler(this, "slider2_change1");
  slider3 = new GSlider(this, 320, 130, 200, 50, 20.0);
  slider3.setShowValue(true);
  slider3.setShowLimits(true);
  slider3.setLimits(90, 0, 180);
  slider3.setEasing(10.0);
  slider3.setNumberFormat(G4P.INTEGER, 0);
  slider3.setOpaque(false);
  slider3.addEventHandler(this, "slider3_change1");
  slider4 = new GSlider(this, 320, 190, 200, 50, 20.0);
  slider4.setShowValue(true);
  slider4.setShowLimits(true);
  slider4.setLimits(90, 0, 180);
  slider4.setEasing(10.0);
  slider4.setNumberFormat(G4P.INTEGER, 0);
  slider4.setOpaque(false);
  slider4.addEventHandler(this, "slider4_change1");
  slider5 = new GSlider(this, 320, 250, 200, 50, 20.0);
  slider5.setShowValue(true);
  slider5.setShowLimits(true);
  slider5.setLimits(90, 0, 180);
  slider5.setEasing(10.0);
  slider5.setNumberFormat(G4P.INTEGER, 0);
  slider5.setOpaque(false);
  slider5.addEventHandler(this, "slider5_change1");
  checkbox1 = new GCheckbox(this, 390, 310, 120, 20);
  checkbox1.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  checkbox1.setText("Garra");
  checkbox1.setOpaque(false);
  checkbox1.addEventHandler(this, "checkbox1_clicked1");
  label1 = new GLabel(this, 30, 20, 80, 20);
  label1.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  label1.setText("Selecciona");
  label1.setOpaque(false);
  label2 = new GLabel(this, 70, 290, 80, 20);
  label2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label2.setText("x: 100");
  label2.setOpaque(false);
  label3 = new GLabel(this, 170, 290, 80, 20);
  label3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label3.setText("y: 100");
  label3.setOpaque(false);
  slider6 = new GSlider(this, 320, 340, 200, 50, 20.0);
  slider6.setShowValue(true);
  slider6.setLimits(90, 0, 180);
  slider6.setNumberFormat(G4P.INTEGER, 0);
  slider6.setOpaque(false);
  slider6.addEventHandler(this, "slider6_change1");
  label4 = new GLabel(this, 75, 328, 174, 20);
  label4.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label4.setText("Input");
  label4.setOpaque(false);
}

// Variable declarations 
// autogenerated do not edit
GSlider slider1; 
GSlider2D slider2d1; 
GDropList dropList1; 
GSlider slider2; 
GSlider slider3; 
GSlider slider4; 
GSlider slider5; 
GCheckbox checkbox1; 
GLabel label1; 
GLabel label2; 
GLabel label3; 
GSlider slider6; 
GLabel label4; 
