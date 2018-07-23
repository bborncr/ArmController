void calcCurves() {
  Table table;
  table = loadTable(selected_file, "header");
  int row_count = table.getRowCount();
  println(row_count + " total rows in table");
  PVector[] points = new PVector[row_count];
  for (int i = 0; i < row_count; i++) {
    TableRow row = table.getRow(i);
    float x = row.getFloat("x");
    float y = row.getFloat("y");
    float z = row.getFloat("z");
    int g = row.getInt("g");
    float wa = row.getFloat("wa");
    int wr = row.getInt("wr");
    // Create the control points
    points[i] = new PVector(x, y, z);
  }
  // Create a single bezier curve in 3D space
  P_Bezier3D bez  = new P_Bezier3D(points, points.length);
  // Create an array called curve that stores the coords of every 100mSec of movement
  // duration is the total time in seconds for the movement
  // framerate of the number of movements per second
  int duration = 10; // in seconds
  int framerate = 10; // frames per second
  PVector[] curve = bez.points(duration * framerate);

  // Prepare curvesFile.csv
  PrintWriter curvesFile;
  curvesFile = createWriter("data/curves.csv");
  curvesFile.println("x,y,z");

  float[] coords = new float[curve.length];
  for (int i = 0; i < curve.length; i++) {
    curvesFile.println(curve[i].x + ","+ curve[i].y+","+ curve[i].z);
  }
  curvesFile.flush(); // Writes the remaining data to the file
  curvesFile.close(); // Finishes the file
  println("Curve processing finished...");

  Table curvesTable;
  curvesTable = loadTable("data/curves.csv", "header");
  int curves_count = curvesTable.getRowCount();
  println(curves_count + " total rows in curves table");
  int markerInterval = round(curves_count/row_count);

  // Prepare coordsFile.csv
  PrintWriter coordsFile;
  coordsFile = createWriter("data/coords.csv");
  coordsFile.println("x,y,z,g,wa,wr");

  for (int i = 0; i < (curves_count); i++) {
    TableRow curves_row = curvesTable.getRow(i);
    TableRow row = table.getRow(min((i/markerInterval), row_count-1));
    float x = curves_row.getFloat("x");
    float y = curves_row.getFloat("y");
    float z = curves_row.getFloat("z");
    int g = row.getInt("g");
    float wa = row.getFloat("wa");
    int wr = row.getInt("wr");
    // Create the control points
    coordsFile.println(x + ","+ y +","+ z+ "," + g + "," + wa + "," + wr);
  }
  coordsFile.flush(); // Writes the remaining data to the file
  coordsFile.close(); // Finishes the file
  println("coordsFile processing finished...");
}
