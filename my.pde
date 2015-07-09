int [] a;
int i,j,temp;
boolean p = false;

void setup()
{
  size(1000,700);
  fill(178);
  strokeWeight(0);
  a = new int [20];
  for (i=0;i<20;i++)
  {
    a[i] = int(random(200)+30);
  }
  
  i = 0;
  j = 0;
}  


void draw()
{
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

void mouseClicked(){
  p = !p; 
}
