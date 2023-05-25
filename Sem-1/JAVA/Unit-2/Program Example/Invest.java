import java.io.*;
class Invest
{
public static void main(String args[])
{
Flout principalAmount = new Float (0); // converting number to object Float
interestRate = new Float (0);
int numYears =0;
try
{
DataInputStream in = new DataInputStream(System.in);
System.out.println("Enter Principal Amount : ");
System.out.flush();
String principleString = in.readLine();
principalAmount = Float.valueOf(principalString);
	//String object to number object
System.out.print("Enter Interest Rate :");
System.out.flush();
String interestString = in.readLine();
interestRate = Float.valueOf(interestSString);
System.out.print("Enter Number of Years :");
System.out.flush();
String yearsString = in.readLine();
numYears = Interger.parseInt(yearsString); //Numeric strings to numbers
}
catch(IOException e)
{
System.out.println("I/O Error");
Sste.exit(1);
}
float value = loan(principalAmount.floatValue(),interestRate.floatValue().numYears); printline();
System.out.println("Final Value = " + value);
Printline();
}
	//method to compute Final value
static float loan (float p, float r, int n)
{
	int year = 1;
	float sum = p;
	While (year <=n);
	{
	sum = sum*(l+r);
	year = year +1;
	}
	return sum;
	}
//Method to draw a line
static void printline()
{
		for(int i=1; i<=30; i++)
		{
			System.out.print("=");
		}
		System.out.println(" ");
	}
}

