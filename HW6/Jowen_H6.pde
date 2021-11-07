Ball[] ball = new Ball[3];

void setup(){
  size(800,800);
  for (int i=0; i < 3; i++){
    ball[i] = new Ball(random(width), random(height),50,int(random(255)),int(random(255)),int(random(255)));
  }
}

void draw(){
  background(255);
  for (Ball b : ball){
    b.update();
    b.display();
    b.checkEdges();
  }
  ball[0].checkBallCollide(ball[1]);
  ball[1].checkBallCollide(ball[2]);
  ball[0].checkBallCollide(ball[2]);
}

class Ball{
  PVector position;
  PVector velocity;
  float rad;
  int r,g,b;
  
  Ball(float x, float y, float r_, int rr,  int gg, int bb){
  position = new PVector(x,y);
  velocity = PVector.random2D();
  rad= r_;
  r = rr;
  g = gg;
  b = bb;
  }
  
  void update(){
    position.add(velocity);
  }

  void checkEdges(){
    if (position.x > width-rad){
      position.x = width-rad;
      velocity.x *= -1;
    }
    if (position.x < rad){
      position.x = rad;
      velocity.x *= -1;
    }
    if (position.y > height-rad){
      position.y = height-rad;
      velocity.y *= -1;
    }
    if (position.y < rad){
      position.y = rad;
      velocity.y *= -1;
    }
  }
  
  void checkBallCollide(Ball other){
    PVector dist = PVector.sub(other.position,position);//dist.x, dist.y
    float dist_mag = dist.mag();
    float dist_min = rad + other.rad;

    if (dist_mag < dist_min){
      float angle = atan2(dist.x, dist.y);
      float targetX = position.x + cos(angle)*dist_min;
      float targetY = position.y + sin(angle)*dist_min;
      float ax = cos((targetX - other.position.x));
      float ay = sin((targetY - other.position.y));
      velocity.x -= ax;
      velocity.y -= ay;
      other.velocity.x += ax;
      other.velocity.y += ay;
      r = int(random(255));
      g = int(random(255));
      b = int(random(255));
      other.r = int(random(255));
      other.g = int(random(255));
      other.b = int(random(255));
    }
  }
    
    void display(){
    noStroke();
    fill(r,g,b);
    ellipse(position.x,position.y,rad*2,rad*2);
    }
}
