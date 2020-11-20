class Star //note that this class does NOT extend Floater
{
  private float myX;
  private float myY;
  private color myColor;
  
  Star() {
    myX = (float)(Math.random()* 800);
    myY = (float)(Math.random()* 600);
    myColor = color((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
  }
  
  public void show() {
      fill(myColor);
      noStroke();
      ellipse(myX,myY,5,5);
  }
}
