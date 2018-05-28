// Andrew Craigie
// lemniscate_Bernoulli.pde

float x = 0;
float y = 0;
float a = 1;

float pX = 0;
float pY = 0;

float increment = PI / 50;

float tMin = -PI;
float tMax = PI;
float t = tMin;

ParticleTrail trail;

void setup () {
  size(600, 400);

  colorMode(HSB, 1.0, 1.0, 1.0, 1.0);
  trail = new ParticleTrail(110, 0.0);
  
}

void draw() {
  background(0.0, 0.0, 0.0);

  translate(width/2, height/2);

  x = (cos(t) * a) / (1 + (pow(sin(t), 2)));
  y = (sin(t) * cos(t) * a) / (1 + (pow(sin(t), 2)));

  pX = x * 180;
  pY = y * 180;

  noStroke();

  float shapeHue = map(t, tMin, tMax, 0.0, 1.0);

  Particle p = new Particle(pX, pY, 100, 100, color(shapeHue, 1.0, 1.0, 1.0));
  trail.addParticle(p);
  trail.show();

  t += increment;

  if (t > tMax) {
    t = tMin;
  }
}
