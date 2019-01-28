public void setup()
{
	size(800, 800);
}
public void draw()
{
	sierpinski(0, 800, 800);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len <= 16)
	{
		fill(x/5, y/5, 150);
		triangle(x, y, x + len/2, y - len, x + len, y);
	}
	else
	{
    	sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
	}
}

/*public void tri(int x, int y, int x2, int y2, int x3, int y3, int len, float r, float g, float b)
{
	fill(r, g, b);
	triangle(x, y, x + len/2, y - len, x + len, y);
}*/