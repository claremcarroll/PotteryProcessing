void drawShapes() {
  
  float tempx1 = 0;
  float tempy1 = 0;
  float tempz1 = 0;
  float tempx2 = 0;
  float tempy2 = 0;
  float tempz2 = 0;
  float tempx3 = 0;
  float tempy3 = 0;
  float tempz3 = 0;
  
  float basex1 = 0;
  float basey1 = 0;
  float basez1 = 0;
  
  float basex2 = 0;
  float basey2 = 0;
  float basez2 = 0;


  for(int i = 0; i < myshapes.size()-1; i++)
  {
    MyShape currentShape = myshapes.get(i);
    MyShape nextShape = myshapes.get(i+1);
    
    for(int j =0; j < locations.size()-1; j++)
    {

      pushMatrix(); 
      translate(width/2, 0);
      rotateY(radians(currentShape.rotation));
      translate(-width/2, 0);
      
      Location currentLocation = locations.get(j);
      
      tempx1 = modelX(currentLocation.x,currentLocation.y, 0);
      tempy1 = modelY(currentLocation.x,currentLocation.y, 0);
      tempz1 = modelZ(currentLocation.x,currentLocation.y, 0);
      popMatrix();
      
      pushMatrix();
      translate(width/2, 0);
      rotateY(radians(nextShape.rotation));
      translate(-width/2, 0);
      
      Location nextLocation = locations.get(j+1);
      
      tempx2 = modelX(nextLocation.x, nextLocation.y, 0);
      tempy2 = modelY(nextLocation.x,nextLocation.y,0);
      tempz2 = modelZ(nextLocation.x,nextLocation.y,0);
      
      popMatrix();
      
      pushMatrix();
      translate(width/2, 0);
      rotateY(radians(nextShape.rotation));
      translate(-width/2, 0);
      
      Location nextLocation2 = locations.get(j);
      
      tempx3 = modelX(nextLocation2.x, nextLocation2.y, 0);
      tempy3 = modelY(nextLocation2.x,nextLocation2.y,0);
      tempz3 = modelZ(nextLocation2.x,nextLocation2.y,0);
      
      popMatrix();
      
      pushMatrix();
      translate(width/2, 0);
      rotateY(radians(counter));
      translate(-width/2, 0);
      
      
      line(tempx1, tempy1, tempz1, tempx2, tempy2, tempz2);
      line(tempx1, tempy1, tempz1, tempx3, tempy3, tempz3);
      popMatrix();
      
    }
  }
  
  
}
