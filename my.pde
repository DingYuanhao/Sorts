int [] a;
int [] b;
int i,j,temp;
boolean p = false;
boolean overboxp = true;
int bpx = 100, by = 100;
int brx = 300;
int hei = 50, wid = 100;

void setup()
{
  size(1000,700);
  fill(178);
  strokeWeight(0);
  a = new int [20];
  b = new int [20];
  
  for (i=0;i<20;i++)
    a[i] = int(random(200)+30);
  
  for (i=0;i<20;i++)
    b[i] = a[i];
    
  i = 0;
  j = 0;
}  


void draw()
{
  fill(178);
  rect(brx,by,wid,hei);
  rect(bpx,by,wid,hei);
  if (p) 
  {
    j++;
    if ((j>19))
    {
      i++;
      j = i;
    }
    else 
    {
        background(255);
        rect(brx,by,wid,hei);
        rect(bpx,by,wid,hei);
        if (a[i]>a[j])
        {
          temp = a[i];
          a[i] = a[j];
          a[j] = temp;
        }
      
      for (int k=0;k<20;k++)
      {  
        if ((k==i)||(k==j)) fill(255,0,0);
        else fill(178);
        rect(100+40*k,500,20,-a[k]);
      }
    }
  }
}

void mousePressed()
{
  if (mouseX<bpx+wid && mouseX>bpx 
    && mouseY<by+hei && mouseY>by) 
    {
      overboxp = true;
    }
    else
    {
      overboxp = false;
    }
  if (mouseX<brx+wid && mouseX>brx 
    && mouseY<by+hei && mouseY>by) 
    {
      for (int x=0;x<20;x++)
        a[x] = b[x];
      background(255);
      p = false;
      i = 0; 
      j = 0;
      for (int k=0;k<20;k++)  
      {
        fill(178);
        rect(100+40*k,500,20,-a[k]);
      }
    }

}

void mouseClicked()
{
  if (overboxp)
    p = !p; 
}
