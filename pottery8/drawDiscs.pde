void drawDiscs()
{
  for (int i =0; i < locations.size(); i++)
  {
    Location temp = locations.get(i);
    pushMatrix();
    translate(width/2,temp.y);
    rotateX(radians(90));
    translate(-width/2,-temp.y);
    
    noFill();
    ellipse(width/2, temp.y, (width/2-temp.x)*2, (width/2-temp.x)*2);
    popMatrix();
    
  }
  
  
  
}
