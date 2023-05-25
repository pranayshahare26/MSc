class SecondCall
{
int length, breadth, height;	//variable declaration
void vol(SecondCall s)		//method definition
{
s.length+=5;
s.breadth+=5;
s.height+=5;
}
}
class CallByReference
{
public static void main(String args[])
{
SecondCall sc =new SecondCall();
sc.length=10;
sc.breadth=20;
sc.height=30;
System.out.println("The value of Length, Breadth and Height before method call: "+sc.length +" "+sc.breadth +" sc.height");
sc.vol (sc);		//passing object as method argument
System.out.println("The value of Length, Breadth and Height after method call: "+sc.length +" "+sc.breadth +" sc.height");
}
}