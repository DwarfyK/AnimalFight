class Iggy extends Dyr{
  
  Iggy(float startPosX, float startPosY){
    imageMode(CENTER);
    animalImage = loadImage("IggyInvis.png");
    animalImage.resize(animalImage.width/4, animalImage.height/4);
    velocityX = 6;
    velocityY = 1;
    posX = startPosX;
    posY = startPosY;
  }
}
