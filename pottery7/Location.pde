class Location  {    
  
  float x;
  float y; 

  

 Location(int xPos, int yPos)  {
    x = (float)xPos;
    y = (float)yPos;

  }
  
  Location(float xPos, float yPos)  {
    x = xPos;
    y = yPos;

  }
  
  void display(float px, float py, int i){
     //ellipse(this.x, this.y, 2,2); 
    stroke(0);
    strokeWeight(4);
    rectMode(CENTER);
    if(i != 0)
    line(this.x, this.y, px, py);
  }
}


