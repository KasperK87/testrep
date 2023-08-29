import java.awt.Robot;

Robot rbt;

void setup() {
  size(500, 500);

  try {
    rbt = new Robot();
  } catch(Exception e) {
    e.printStackTrace();
  }
}

void draw() {
  int x = displayWidth/2 + (int) (sin(millis()/300f) * 200);
  int y = displayHeight/2 + (int) (cos(millis()/300f) * 200);

  rbt.mouseMove(x, y);
}

void keyPressed(){
  if (key == 'q')
    exit();
}
