class Cuboid
{
	int length;
	int width;
	int height;
	void initialize(int l, int w, int h)		//parameterized method
	{
		length=l;
		width=w;
		height=h;
	}
	int volume();
	{
		return(length*width*height);
	}
}
class ParameterizedMethod
{
	public static void main(String args[])
	{
		Cuboid c1=new Cuboid();		//creating object
		Cuboid c2=new Cuboid();
		c1.initialize(12,10,8);		//calling initialized method
		int vol1=c1.volume();		//calling method
		c2.initialize(13,11,9);
		int vol2=c2.volume();
		System.out.println("The volume of the Cuboid is:"+vol1);
		System.out.println("The volume of the Cuboid is:"+vol2);
	}
}
