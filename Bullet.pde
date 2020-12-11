public class Bullet extends Floater{
   public Bullet() {
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners]; 
    xCorners[0] = 8;
    yCorners[0] = -2;
    xCorners[1] = 8;
    yCorners[1] = 2;
    xCorners[2] = -8;
    yCorners[2] = 2;
    xCorners[3] = -8;
    yCorners[3] = -2;
    myColor = 225;   
    myCenterX = 400;
    myCenterY = 300; //holds center coordinates   
    myXspeed = 0;
    myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection = 0; //holds current direction the ship is pointing in degrees
   }
   
}
