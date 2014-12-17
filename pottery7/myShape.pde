class MyShape {
  
  ArrayList <Location> mylocations = locations;
  int rotation;
  
  MyShape(int r) {
    rotation = r;
  }
  
  
  void display() {
    
      pushMatrix();
      beginShape();
      
      translate(width/2, 0);
      rotateY(radians(counter+rotation));
      translate(-width/2, 0);
      for(int i=0; i<locations.size(); i++)
      {
         Location temp = locations.get(i); 
         curveVertex(temp.x, temp.y);         
      }
      endShape(); 
      popMatrix();
     
    
    
  }
  
  
  
  
}
