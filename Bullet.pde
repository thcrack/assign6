class Bullet{
  PImage bulletImg;
  boolean state;
  int x;
  int y;
  int speed;
  Bullet(){
    bulletImg = loadImage("img/shoot.png");
    init();
    speed = 10;
  }

  void draw(){
    image(bulletImg, x, y);
  }
  
  void move(){
    x -= speed;
    if(isOutOfBorder()){
      init();
    }
  }

  void shoot(){
    x = fighter.x;
    y = fighter.y;
    state = true;
  }
  
  void init(){
    state = false;
    x = -1000;
    y = -1000;
  }
  
  
  boolean isOutOfBorder()
  {
    if(x < -this.bulletImg.width){
      return true;
    }
    return false;
  }
  
}
