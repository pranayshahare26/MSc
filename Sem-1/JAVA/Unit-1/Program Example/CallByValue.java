class FirstCall
{
void vol (int I, int j, int k)
{
I+=5;
j+=5;
k+=5;
}
}
class CallByValue
{
public static void main(String args[])
{
FirstCall fc = new FirstCall();
int I=10;
int w=20;
int h=15;
System.out.println("Length, Width, Height before call is:" +I+ ""+w+ "" +h);
fc.vol(I, w, h);	//passing values as arguments
System.out.println("Length, Bredth, Height after call is:" +I+ "" +w+ "" +h);
}
}
