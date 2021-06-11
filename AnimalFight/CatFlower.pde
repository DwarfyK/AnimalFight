class CatFlower extends PlantLife{

  CatFlower(float startPosX, float startPosY){
    plantImage = loadImage("CatPlantInvis.png");
    plantImage.resize(plantImage.width/3, plantImage.height/3);
    posX = startPosX;
    posY = startPosY;
  }
}
