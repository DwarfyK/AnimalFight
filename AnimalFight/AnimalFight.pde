ArrayList <Dyr> dyreListe = new ArrayList <Dyr> ();
ArrayList <PlantLife> plantListe = new ArrayList <PlantLife> ();
ArrayList <Frozen> frozenListe = new ArrayList <Frozen> ();
PImage BackdropCairo;


void setup(){
  size(1920, 1080);
  BackdropCairo = loadImage("CairoBackdrop.jpg");
  BackdropCairo.resize(1920, 1080);
}

void draw(){  
  clear();
  imageMode(CORNERS);
  image(BackdropCairo, 0, 0);
  
  for(Frozen currentFrozen : frozenListe){
    currentFrozen.Display();
  }

  
  textSize(32);
  fill(355, 250, 600);
  text("i = Iggy",80, 300);
  text("p = PetShop",80, 350);
  text("t = Tree",80, 400);
  text("c = CatFlower",80, 450);
  text("f = Frozen",1500, 300);
  
  
  for(Dyr currentDyr : dyreListe){
    currentDyr.Display();
    currentDyr.Move(frozenListe);
  }
  for(PlantLife currentTerrain : plantListe){
    currentTerrain.Display();
    if(frameCount % 20 == 0){
      currentTerrain.grow();
    }
  }
  


}


void keyPressed(){

    if(key =='i'){
    Dyr d = new Dyr();
    d = new Iggy(mouseX, mouseY);
    dyreListe.add(d);

  } else if(key == 'p'){
    Dyr d = new Dyr();
    d = new PetShop(mouseX, mouseY);
    dyreListe.add(d);

  } else if(key == 't'){
    PlantLife t = new PlantLife();
    t = new Tree(mouseX, mouseY);
    plantListe.add(t);
  
  } else if(key == 'c'){
    PlantLife t = new PlantLife();
    t = new CatFlower(mouseX, mouseY);
    plantListe.add(t);
    
  } else if(key == 'f'){
    Frozen f = new Frozen(mouseX, mouseY);
    frozenListe.add(f);
  }
}
