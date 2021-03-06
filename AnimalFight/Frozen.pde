class Frozen{
  PImage IceImage;
  float posX;
  float posY;



  void Display(){
    if (IceImage != null){
      imageMode(CENTER);
      image(IceImage, posX, posY);
    }    
  }
  
  Frozen(float startPosX, float startPosY){
    IceImage = loadImage("IceInvis.png");
    IceImage.resize(IceImage.width/2, IceImage.height/2);
    posX = startPosX;
    posY = startPosY;
  }

  public boolean CheckForCollision(float inPosX, float inPosY, float inWidth, float inHeight){

    float myHeight = IceImage.height;
    float myWidth = IceImage.width;

    // is the right hand corner of x1 further to the right than the left hand corner of x2
    if(inPosX + inWidth/2 > posX - myWidth/2 && inPosX - inWidth/2 < posX + myWidth/2    &&    inPosY + inHeight/2 > posY - myHeight/2 && inPosY - inHeight/2 < posY + myHeight/2){
      return true;
    } else {
      return false;
    }
  }

}
