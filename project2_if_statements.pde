float w = 0;
float amplitude = 100;
float time = 1.0/32;

int points = 100;
int i;


void setup()
{
  
size( 700, 300);

}

void draw()
{
   
    translate(0, height/2);
    
    {
  if (mousePressed == true){
    background(255);
    smooth();
   fill(0,0,150,40);
    
    stroke(0,0,250,40);
    strokeWeight(50);
 endShape(); 
 w -= 0.05; 
 
    }else{
    
      background (255);
      //fill(0,0,150,40);
      stroke(0);
      strokeWeight(30);
      smooth();
    }
        float x= 0;
        float y= 0;
        float angle = width/ points ;
    
    beginShape();
    for (int i = 0; i < points; i++){
        
       x= angle*i; 
    
     y = sin(x* time +w)* amplitude;
    vertex(x, y);
   
  }
  endShape();
  w -= 0.05;
  
  }
}