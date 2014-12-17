void state1(){
  
   background(255);
   
   line(width/2, 0, width/2, height);
  
  float px = -1;
  float py = -1;
  float pz = -1; 
  
  if(mousePressed)
  {
//    ellipse(mouseX,mouseY,2,2);
//    ellipse( (((width/2) - mouseX) + width/2), mouseY, 2,2);

    Location temp = new Location(mouseX, mouseY);
    locations.add(temp);
    
    Location temp2 = new Location(((width/2 - mouseX) + width/2), mouseY);
    locations2.add(temp2);
  }
    for(int i =0; i<locations.size()-1; i++)
    {
      Location mylocation = locations.get(i);
      mylocation.display(px, py, i);
    
      px = mylocation.x;
      py = mylocation.y;

    }
    
    for(int i =0; i<locations2.size()-1; i++)
    {
      Location mylocation2 = locations2.get(i);
      mylocation2.display(px, py, i);
    
      px = mylocation2.x;
      py = mylocation2.y;

      
    }
    
    
    

  
  
  
}
  
  
  

