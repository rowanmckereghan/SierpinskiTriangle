public void setup()
{
	size(800, 800);
}
public void draw()
{
	sierpinski(0, 800, 800, 144, 12, 63);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len, float r, float g, float b) 
{
  fill(r,g,b);
	if (len <= 16)
	{
    fill(r,g,b);
		triangle(x, y, x + len/2, y - len, x + len, y);
	}
	else
	{
    fill(r,g,b);
    sierpinski(x, y, len/2, r - .1, g+.2, b-.05);
		sierpinski(x + len/2, y, len/2,r - .1, g+.2, b-.05);
		sierpinski(x + len/4, y - len/2, len/2,r - .1, g+.2, b-.05);
	}
}