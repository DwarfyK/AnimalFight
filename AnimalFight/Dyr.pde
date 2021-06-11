class Dyr{
  PImage animalImage;
  float posX;
  float posY;
  float velocityX;
  float velocityY;
  
  void Display(){
    if (animalImage != null){
      imageMode(CENTER);
      image(animalImage, posX, posY);
    }
  }
  
  void Move(ArrayList<Frozen> frozenListe){
    
    boolean inIce = CheckForIce(frozenListe);
    if(inIce){
      posX = posX + velocityX * 0.25;
      posY = posY + velocityY * 0.25;
    } else {
      posX = posX + velocityX;
      posY = posY + velocityY;
    }
    
    
    if(posX > width){
      velocityX = -4;
    }
    
    if(posX < 0){
      velocityX = 4;
    }
    
    if(posY > height){
      velocityY = -1;
    }
    
    if(posY < 0){
      velocityY = 1;
    }
  }
    
  boolean CheckForIce(ArrayList<Frozen> frozenListe){
    
    for(Frozen currentFrozen : frozenListe){
      if (currentFrozen.CheckForCollision(posX, posY, animalImage.width, animalImage.height)){
        return true;
      }
    }

    return false;
  }

}
