class LogicalOperators
{
public static void main(String[]args)
{
Float a=10.0f, b=15.5f, c=30.0f;
System.out.println("a= "+a);
System.out.println("b= "+b);
System.out.println("c= "+c);
System.out.println(" ");
System.out.println("a<b && a==c returns "+(a<b&&a==c) );
System.out.println("a<b && a!=c returns "+(a<b&&a!=c) );
System.out.println("a<b || a==c returns "+(a<b||a==c) );
System.out.println("a<b || a!=c returns "+(a<b||a!=c) );
System.out.println("a<b && a==c) returns "+!(a<b && a==c) );
}
}
