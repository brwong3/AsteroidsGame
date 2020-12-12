class Spaceship extends Floater  
{
  public Spaceship() {  
    corners = 3;  //the number of corners, a triangular floater has 3   
    xCorners = new int[corners];
    yCorners = new int[corners]; 
    xCorners[0] = - 8;
    yCorners[0] = - 8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    myColor = 225;   
    myCenterX = 400;
    myCenterY = 300; //holds center coordinates   
    myXspeed = 0;
    myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection = 0; //holds current direction the ship is pointing in degrees
  }
  public double getMyCenterX() {
    return myCenterX;
  }
  public double getMyCenterY() {
    return myCenterY;
  }
  public double getMyPointDirection() {
    return myPointDirection;
  }
  public double getMyXSpeed() {
    return myXspeed; 
  }
  public double getMyYSpeed() {
    return myYspeed; 
  }  
}
