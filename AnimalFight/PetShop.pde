class PetShop extends Dyr{
  
  PetShop(float startPosX, float startPosY){
    imageMode(CENTER);
    animalImage = loadImage("PetShopInvis.png");
    animalImage.resize(animalImage.width/3, animalImage.height/3);
    velocityX = 6;
    velocityY = 1;
    posX = startPosX;
    posY = startPosY;
  }
}
