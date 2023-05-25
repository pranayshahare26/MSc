class Ovrload
{
	String s1,s2;
	int i,i1;
	void show()
	{
		System.out.println("Delhi is an important city.");
	}
	void show (String s)
	{
		s1=s;
		for(i=0;i<=2;i++)
		{
			System.out.println(s1);
		}
	}
	void show(String s, int i)
	{
		s2=s;
		i1=0;
		while(i1<i)
		{
			System.out.println(s2);
			i1++;
		}
	}
}
		class Ovrload_demo
		{
			public static void main(String args[])
			{
			Ovrload obj1=new Ovrload();
			obj1.show();
			obj1.show();
			System.out.println("\n");
			obj1.show("Bombay is a beautiful city");
			System.out.println("\n");
			obj1.show("Chennai is a peacefull city",4);
		}
	}
