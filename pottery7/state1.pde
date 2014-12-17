void state1(){
  

  
   background(255);
   
   
   
   line(width/2, 0, width/2, height);
  
  float px = -1;
  float py = -1;
  float pz = -1; 
  
for(Hand hand : leap.getHands()){


    // ----- BASICS -----
        
    int     hand_id          = hand.getId();
    PVector hand_position    = hand.getPosition();
    PVector hand_stabilized  = hand.getStabilizedPosition();
    PVector hand_direction   = hand.getDirection();
    PVector hand_dynamics    = hand.getDynamics();
    float   hand_roll        = hand.getRoll();
    float   hand_pitch       = hand.getPitch();
    float   hand_yaw         = hand.getYaw();
    boolean hand_is_left     = hand.isLeft();
    boolean hand_is_right    = hand.isRight();
    float   hand_grab        = hand.getGrabStrength();
    float   hand_pinch       = hand.getPinchStrength();
    float   hand_time        = hand.getTimeVisible();
    PVector sphere_position  = hand.getSpherePosition();
    float   sphere_radius    = hand.getSphereRadius();

    for(Finger finger : hand.getFingers()){
      
      int     finger_id         = finger.getId();
      PVector finger_position   = finger.getPosition();
      PVector finger_stabilized = finger.getStabilizedPosition();
      PVector finger_velocity   = finger.getVelocity();
      PVector finger_direction  = finger.getDirection();
      float   finger_time       = finger.getTimeVisible();
      
      println(finger.getType());

      if(finger.getType() == 1)
      {
        fill(255,0,0);
        ellipse(finger_stabilized.x, finger_stabilized.y,10,10);
        noFill();
        if(hand.getPinchStrength() > .6)
        {
            Location temp = new Location(finger_stabilized.x, finger_stabilized.y);
            locations.add(temp);
            
            Location temp2 = new Location(((width/2 - finger_stabilized.x) + width/2), finger_stabilized.y);
            locations2.add(temp2);
        }
      }
      else {
        
      } 
      
    
    }
    
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

  
  
  

  
  
  

