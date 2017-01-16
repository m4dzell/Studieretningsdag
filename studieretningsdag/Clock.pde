class Clock {

  void clock(float x, float y, float h, float m, float r)
  {
    strokeWeight(2);
    // Draw circle
    stroke(0);
    ellipse(x, y, r, r);

    // Draw hourhand
    pushMatrix();
    translate(x, y);
    rotate(map(h, 0, 12, 0, 2*PI)-PI/2);
    line(0, 0, r/4, 0);
    popMatrix();

    // Draw minutehand
    pushMatrix();
    translate(x, y);
    rotate(map(m, 0, 60, 0, 2*PI)-PI/2);
    line(0, 0, r/2.5, 0);
    popMatrix();

    strokeWeight(1);
  }
}