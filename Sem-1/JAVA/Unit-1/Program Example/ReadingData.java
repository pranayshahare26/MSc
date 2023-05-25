// importing package for using DataInputStream Class
import java.io.*;
public class ReadingData
{
public static void main(String[]args)
{
DataInputStream in=new DataInputStream(System.in);
int num1=0;
float num2=0;
try
{
System.out.println("Enter integer value");
num1=Integer.parseInt(in.readLine());
System.out.println("Enter float value");
num2=Float.valueOf(in.readLine()).floatValue();
}
catch(Exception e)
{
System.out.println("The integer value is "+num1);
System.out.println("The float value is "+num2);
}
}
}

