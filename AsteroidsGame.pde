Star[] nightSky = new Star[100];
Spaceship spaceship = new Spaceship();
ArrayList <Asteroid> AsteroidsGroup = new ArrayList <Asteroid>();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();

private double MaxBullets = 10;
private int health = 100;
private int level = 1;
private int numOfAsteroids = 10;
private double numOfBullets = 10;
private int score = 0;
private int MaxHealth = 100;


public void setup() 
{
  size(800,600);
  background(0);
  for(int i = 0; i < 100; i++) {
    nightSky[i] = new Star();
    
  }
  for(int i = 0; i < numOfAsteroids; i++) {
    Asteroid asteroids = new Asteroid();
    AsteroidsGroup.add(i,asteroids);
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
  
 if(numOfAsteroids == 0) {
  level += 1;
  MaxHealth += 10;
  health = MaxHealth;
  numOfAsteroids += 3 * level + 10;
  MaxBullets += 10;
   for(int i = 0; i <= numOfAsteroids; i++) {
    Asteroid asteroids = new Asteroid();
    AsteroidsGroup.add(i,asteroids);
  }
 }
 
 
  
  for(int i = 0; i < numOfAsteroids; i++) {
    if(dist((float)spaceship.myCenterX,(float)spaceship.myCenterY, (float)AsteroidsGroup.get(i).myCenterX,(float)AsteroidsGroup.get(i).myCenterY) <= 20) {
       AsteroidsGroup.remove(i);
       numOfAsteroids --;
       score ++;
       health -= 10;
       break;
    }
    else {
      AsteroidsGroup.get(i).show();
      AsteroidsGroup.get(i).move();
    }
  }
  numOfBullets += 0.01 + 0.01*level;
  fill(192);
  rect(10,10, 200, 20); //Health Bar
  fill(255,0,0);
  rect(10,10,(200 * health/MaxHealth),20);
  fill(192);
  rect(10,40, 200,20);
  fill(0,0,255); //bullet bar;
  rect(10,40, (int)(200* (numOfBullets/MaxBullets)),20);
  textSize(25);
  fill(192);
  text("Level : " + level, 10,90);
  text("Score : " + score, 10, 120);
  if(numOfBullets >= MaxBullets) {
   numOfBullets = MaxBullets; 
  }
  if(numOfBullets <= 0) {
   numOfBullets = 0; 
  }
  if(health <= 0) {
   textSize(100);
   fill(255,0,0);
   text("GAME OVER", 100 ,340);
   health = 0;
   numOfBullets = 0;
 }
 

  for(int i = 0; i < bullets.size(); i++) {
   bullets.get(i).show();
   bullets.get(i).move();
   if(bullets.get(i).myCenterX  == 800 || bullets.get(i).myCenterX == 0) {
    bullets.remove(i);
    break;
     
   }
   if(bullets.get(i).myCenterY  == 600 || bullets.get(i).myCenterY == 0) {
    bullets.remove(i);
    break;
   }
   for(int j = 0; j < AsteroidsGroup.size(); j++) {
    if(dist((float)bullets.get(i).getMyCenterX(),(float)bullets.get(i).getMyCenterY(), (float)AsteroidsGroup.get(j).myCenterX,(float)AsteroidsGroup.get(j).myCenterY) <= 20) {
      AsteroidsGroup.remove(j);
      bullets.remove(i);
      score ++;
      numOfAsteroids --;
      break;
   }
   }
 
 }
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
   if(key == ' ' && numOfBullets > 1) {
    bullets.add(new Bullet(spaceship));
    numOfBullets --;
   }
}
