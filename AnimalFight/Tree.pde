class Tree extends PlantLife{

  Tree(float startPosX, float startPosY){
    plantImage = loadImage("TreeInvis.png");
    plantImage.resize(plantImage.width/3, plantImage.height/3);
    posX = startPosX;
    posY = startPosY;
  }
}
