// Boss image is "img/enemy2.png" 
class Boss extends Enemy{
  Boss(int x, int y, int type){
    super(x ,y, type);
    super.enemyImg = loadImage("img/enemy2.png");
    super.speed = 2;
    hp = 5;
    damage = 50;
  }
}
