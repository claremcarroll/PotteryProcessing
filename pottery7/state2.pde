void state2(){
  
  
  myshapes = new ArrayList<MyShape>();
  
  imageMode(CORNER);
  counter++;
  background(255);
  noFill();
  
  for(int i=0; i < 360; i+=spacing){
     MyShape temp = new MyShape(i);
     myshapes.add(temp);    
  }
  
  for(int j=0; j < myshapes.size(); j++) {
    MyShape drawshape = myshapes.get(j);
    drawshape.display();
    
  }

  drawDiscs();
  drawShapes();
        
  if(mousePressed){
    imageMode(CENTER);
    camera(30.0, mouseY, 220.0, // eyeX, eyeY, eyeZ
           width/2, height/2, 0.0, // centerX, centerY, centerZ
           0.0, 1.0, 0.0); // upX, upY, upZ
    
    
  }
  
  
  
  
}
