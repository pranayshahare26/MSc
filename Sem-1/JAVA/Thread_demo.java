class A extends Thread
{
	public void run()
	{
		for(int i=1;i<=5;i++)
		{
			System.out.println("from thread A: i="+i);
		}
		System.out.println("Exit from thread A");
	}
}
class B extends Thread
{
	public void run()
	{
		for(int j=1;j<=5;j++)
		{
			System.out.println("from thread B: j="+j);
		}
		System.out.println("Exit from thread B");
	}
}
class C extends Thread
{
	public void run()
	{
		for(int k=1;k<=5;k++)
		{
			System.out.println("from thread C: K="+k);
		}
		System.out.println("Exit from thread C");
	}
}
class Thread_demo
{
	public static void main(String args[])
	{
		new A().start();
		new B().start();
		new C().start();
	}
}
