import de.voidplus.leapmotion.*;


// our Leap Motion object
LeapMotion leap;


ArrayList<Location> locations;
ArrayList<Location> locations2;
ArrayList<Location> mylocations;
ArrayList <MyShape> myshapes;


int state;
int counter = 0;
int spacing = 10;

void setup(){
  background(255);
  leap = new LeapMotion(this);
  state = 1;
  size(800, 600, P3D);
  locations = new ArrayList<Location>(); 
  locations2 = new ArrayList<Location>(); 
  
}


void draw() {
  
  smooth();

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
