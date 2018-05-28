// ParticleTrail class

class ParticleTrail {

  ArrayList<Particle> particles;
  int lifeSpan;
  float sizeDecrease;

  ParticleTrail(int lSpan, float decrease) {

    this.lifeSpan = lSpan;
    this.sizeDecrease = decrease;
    particles = new ArrayList<Particle>();
    
  }

  void addParticle(Particle newP) {

    if (particles.size() > lifeSpan) {
      particles.remove(0);
    }
    particles.add(newP);
  }

  void show() {

    for (int i = 0; i < particles.size()  ; i++) {
      
      Particle p = particles.get(i);
      
      float trans = map(i, 0, particles.size(), 0.0, 1.0);
      float decrease = map(i, 0, particles.size() , this.sizeDecrease, 1.0);
      
      float xWidth = p.xWidth * decrease;
      float yWidth = p.yWidth * decrease;
      
      p.show(trans, xWidth, yWidth);
      
    }
    
  }
  
}
