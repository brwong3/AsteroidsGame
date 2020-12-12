public class Bullet extends Floater{
   public Bullet(Spaceship spaceship) {
   myCenterX = spaceship.getMyCenterX();
   myCenterY = spaceship.getMyCenterY(); //holds center coordinates   
   myXspeed = spaceship.getMyYSpeed();
   myYspeed = spaceship.getMyXSpeed(); //holds the speed of travel in the x and y directions   
   myPointDirection = spaceship.getMyPointDirection(); //holds current direction the ship is pointing in degrees
   accelerate(6);
    
   }
   
   public void show() {
     fill(128);
    ellipse((float)(myCenterX),(float)(myCenterY), 10,10); 
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
