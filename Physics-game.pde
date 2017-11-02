public int x = 200;
public int y = 350;
public float c = random(0,400);
public int z = 0;
public int q = 0;
public float r = random(0,400);
public float s = random(0,400);
public int t = 400;
public int u = 400;
public float v = random(0,400);
public int score = 0;
void setup() {
   size(400,400);
   background(135,206,250);
}
/*public void gameOver() {
   int score = 0;  
   fill(0);
   text("Score: "+score,200,200);
}*/
public void draw() {
   background(135,206,250);
   noStroke();
   fill(250,128,114);
   triangle(x,y,x-30,y+40,x+30,y+40);
   fill(255,255,0);
   ellipse(c,z,20,20);
   ellipse(q,r,20,20);
   ellipse(s,t,20,20);
   ellipse(u,v,20,20);
   //c = c+5;
   score = score +1;
   text("Score: " + score,180,20);
   z = z+5;
   if(z>400) {
     z = 0;
     c = random(0,400);
   }
   q = q+5;
   if(q>400) {
     q = 0;
     r = random(0,400);
   }
   t = t-5;
   if(t<0) {
     t = 400;
     s = random(0,400);
   }
   u = u-5;
   if(u<0) {
     u = 400;
     v = random(0,400);
   }
   if(x<c+10 && x>c-10 && y<z+10 && y>c-10) {
     score = 0;
   }
   if(x<q+10 && x>q-10 && y<r+10 && y>r-10) {
     score = 0;
   }
   if(x<s+10 && x>s-10 && y<t+10 && y>t-10) {
     score = 0;
   }
   if(x<u+10 && x>u-10 && y<v+10 && y>v-10) {
     score = 0;
   }
}
public void keyPressed(){
  background(135,206,250);
  if(key == 'w') {
    y = y-20;
  }
  if(key == 'a') {
    x = x-20;
  }
  if(key == 's') {
    y = y+20;
  }
  if(key == 'd') {
    x = x+20;
  }
}






