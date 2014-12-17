ArrayList<Location> locations;
ArrayList<Location> locations2;

int state;
int counter = 0;

void setup(){
  background(255);
  state = 1;
  size(800, 600, P3D);
  locations = new ArrayList<Location>(); 
  locations2 = new ArrayList<Location>(); 
  
}


void draw() {
  
  smooth();
  println(state);
  if(state == 1)
  {
    state1();
  }
  else if(state == 2)
  {
    state2();
  }
  else if(state == 3)
  {
    state3();
  }
}

    void keyPressed() {

    if(keyCode == BACKSPACE)
    {
      state = 3;
    }
    
    if(keyCode == ENTER)
    {
      state = 2;
      
    }
    

}
