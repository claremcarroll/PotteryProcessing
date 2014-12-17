void state2(){
  imageMode(CORNER);
  counter++;
  background(255);
  noFill();
      beginShape();
      for(int i=0; i<locations.size(); i++)
      {
         Location temp = locations.get(i);    
        curveVertex(temp.x, temp.y);         
      }
      endShape(); 
      
      pushMatrix();
      beginShape();
      
      translate(width/2, 0);
      rotateY(radians(counter));
      translate(-width/2, 0);
      for(int i=0; i<locations.size(); i++)
      {
         Location temp = locations.get(i);    
        curveVertex(temp.x, temp.y);         
      }
      endShape(); 
      popMatrix();
      
      pushMatrix();
      beginShape();
      
      translate(width/2, 0);
      rotateY(radians(90));
      rotateY(radians(counter));
      translate(-width/2, 0);
      for(int i=0; i<locations.size(); i++)
      {
         Location temp = locations.get(i);    
        curveVertex(temp.x, temp.y);         
      }
      endShape(); 
      popMatrix();
      
          pushMatrix();
      beginShape();
      
      translate(width/2, 0);
      rotateY(radians(90));
      
      translate(-width/2, 0);
      for(int i=0; i<locations.size(); i++)
      {
         Location temp = locations.get(i);    
        curveVertex(temp.x, temp.y);         
      }
      endShape(); 
      popMatrix();
      
      
      beginShape();
      for(int i=0; i<locations2.size(); i++)
      {
         Location temp = locations2.get(i);    
        curveVertex(temp.x, temp.y);         
      }
      endShape(); 
      
      
      pushMatrix();
      translate(width/2, 0);
      rotateY(radians(counter));
      translate(-width/2, 0);
      beginShape();
      for(int i=0; i<locations2.size(); i++)
      {
         Location temp = locations2.get(i);    
        curveVertex(temp.x, temp.y);         
      }
      endShape(); 
      popMatrix();
      
      pushMatrix();
      translate(width/2, 0);
      rotateY(radians(90));
      rotateY(radians(counter));
      translate(-width/2, 0);
      beginShape();
      for(int i=0; i<locations2.size(); i++)
      {
         Location temp = locations2.get(i);    
        curveVertex(temp.x, temp.y);         
      }
      endShape(); 
      popMatrix();
      
      pushMatrix();
      translate(width/2, 0);
      rotateY(radians(90));
      
      translate(-width/2, 0);
      beginShape();
      for(int i=0; i<locations2.size(); i++)
      {
         Location temp = locations2.get(i);    
        curveVertex(temp.x, temp.y);         
      }
      endShape(); 
      popMatrix();
      
  if(mousePressed){
    imageMode(CENTER);
    camera(30.0, mouseY, 220.0, // eyeX, eyeY, eyeZ
           width/2, height/2, 0.0, // centerX, centerY, centerZ
           0.0, 1.0, 0.0); // upX, upY, upZ
    
    
  }
  
  
  
  
}
