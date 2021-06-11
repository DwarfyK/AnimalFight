class PlantLife{
  PImage plantImage;
  float posX;
  float posY;
  
void Display(){
    if (plantImage != null)
      image(plantImage, posX, posY);
    }
  
void grow(){
    if(plantImage.width < 400 && plantImage.height < 800){
      plantImage.resize(plantImage.width+1,plantImage.height+1);  
    }    
  }

}
