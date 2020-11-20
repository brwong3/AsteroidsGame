Star[] nightSky = new Star[100];
Spaceship spaceship = new Spaceship();
public void setup() 
{
  size(800,600);
  background(0);
  for(int i = 0; i < 100; i++) {
    nightSky[i] = new Star();
    
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < 100; i++) {
    nightSky[i].show();
  }
  spaceship.show();
  spaceship.move();
}
double degrees = 0;
public void keyPressed() {
    if(key == 'A' || key == 'a') {
      spaceship.turn(10);
    }
    if(key == 'D' || key == 'd') {
      spaceship.turn(-10);
    }
   if(key == 'W' || key == 'w'){
      spaceship.accelerate(0.1); 
   }
   if(key == 'S' || key == 's'){
     if(spaceship.myXspeed >= 0 && spaceship.myYspeed >= 0){
          spaceship.accelerate(-0.1); 
     }
   }
   if(key == 'Q' || key == 'q') {
    spaceship.myCenterX = Math.random()*800;
    spaceship.myCenterY = Math.random()*600;
    spaceship.myPointDirection = Math.random()*360;
    spaceship.myXspeed = 0;
    spaceship.myYspeed = 0;
     
   }
}
