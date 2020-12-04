public class Asteroid extends Floater {
  private int scaleFactor = (int)(Math.random() * 2 + 4);
  private double rotSpeed;
  public Asteroid() {
    corners = 6;  //the number of corners, a triangular floater has 3   
    xCorners = new int[corners];   
    yCorners = new int [corners];   
    xCorners[0] = -11 * scaleFactor;
    yCorners[0] = -8 * scaleFactor;
    xCorners[1] = 7  * scaleFactor;
    yCorners[1] = -8  * scaleFactor;
    xCorners[2] = 13  * scaleFactor;
    yCorners[2] = 0;
    xCorners[3] = 6  * scaleFactor;
    yCorners[3] = 10  * scaleFactor;
    xCorners[4]  = -11  * scaleFactor;
    yCorners[4] = 8  * scaleFactor;
    xCorners[5] = - 5  * scaleFactor;
    yCorners[5] = 0;
    myColor = 128; 
    myCenterX = Math.random() * 800;
    myCenterY = Math.random() * 600;//holds center coordinates   
    myXspeed = Math.random() * 3 - 1; 
    myYspeed = Math.random() * 4 - 2; //holds the speed of travel in the x and y directions   
    myPointDirection = 0; //holds current direction the ship is pointing in degrees
    rotSpeed = Math.random() * 2 + 1;
  }
  
  public void move() {
     turn(rotSpeed);
     super.move();
  }
}
