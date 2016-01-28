public void setup()
{
	size(1000,1000);
	stroke(255);
	strokeWeight(0);
	noLoop();
}
public void draw()
{
	int length = 1000;
	int x = 0;
	int y = 1000;
	fill(0);
	triangle(x, y, x + length / 2, y - length, x + length, y);
	fill(255);
	sierpinski(x,y,length);
}
public void mouseDragged()//optional
{
	redraw();
}
public void sierpinski(double x, double y, double length)
{
	if(length <= 2)
	{
		fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
		triangle((float)x, (float)y, (float)(x + (length/2)), (float)(y - length), (float)(x + length), (float)y);
	}
	else 
	{
		sierpinski(x, y, length / 2);
		sierpinski(x + (length/2), y, length / 2);
		sierpinski(x + (length/4), y - (length / 2), length / 2);
	}
}
