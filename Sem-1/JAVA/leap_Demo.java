import java.io.*;
class leap
{
public boolean Check(int y)
{
if(y%4==0)
{
return true;
}
else
{
return false;
}
}
}
class leap_Demo
{
public static void main(String args[])throws IOException
{
int yr;
System.out.println("Enter the year:=");
InputStreamReader isr=new InputStreamReader(System.in);
BufferedReader br=new BufferedReader(isr);
yr=Integer.parseInt(br.readLine());

leap obj1=new leap();
if(obj1.Check(yr)==true)
{
	System.out.println("Year is leap year");
}
else
{
	System.out.println("Year is not leap year");
}
}
}