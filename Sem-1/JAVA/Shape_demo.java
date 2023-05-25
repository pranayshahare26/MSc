abstract class Shape
{
	int I,b,h,ba;
	abstract int area();
}
class rectangle extends Shape
{
	rectangle(int x,int y)
	{
		I=x;
		b=y;
	}
	int area()
	{
		return 1*b;
	}
}
class triangle extends Shape
{
	triangle (int a,int b)
	{
		ba=a;
		h=b;
	}
	int area()
	{
		return(ba*h)/2;
	}
}
class Shape_demo
{public static void main(String args[])
{
	Shape s1;
	rectangle R=new rectangle(20,20);
	triangle T=new triangle(20,40);
	int z;
	s1=R;
	z=s1.area();
	System.out.println("\n\n Area of rectangle: "+z);
	s1=T;
	z=s1.area();
	System.out.println("\n\n Area of Triangle: "+z);
}
}