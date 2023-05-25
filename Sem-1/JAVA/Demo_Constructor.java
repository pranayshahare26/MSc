class Employee
{
		int e_no;
		double e_sal;
		String e_name;
		Employee()		//Default Constructor
		{
			e_no=101;
			e_sal=2090.50;
			e_name="AAA";
		}
		Employee(int empno,double empsal,String empname)	//Parameterized Constructor
		{
			e_no=empno;
			e_sal=empsal;
			e_name=empname;
}
void show()
{
			System.out.println("Employee No. : "+e_no);
			System.out.println("Employee Salary. : "+e_sal);
			System.out.println("Employee Name. :"+e_name);
	}
}
class Demo_Constructor
{
	public static void main(String args[])
	{
		Employee e1=new Employee();
		e1.show();
		Employee e2=new Employee(10,50050,"BBB");
		e2.show();
	}
}