// Particle class

class Particle {
  
  float x;
  float y;
  float xWidth;
  float yWidth;
  color col;
  
  Particle(float x, float y, float w, float h, color col){
    
    this.x = x;
    this.y = y;
    this.col = col;
    this.xWidth = w;
    this.yWidth = h;
         
  }
  
  void show(float trans, float w, float h){
    
    pushStyle();
    fill(hue(this.col), saturation(this.col), brightness(this.col), trans);
    ellipse(this.x, this.y, w, h);
    popStyle();
    
  }
  
}
