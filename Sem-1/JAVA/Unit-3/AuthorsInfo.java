import java.sql.*;
public class AuthorsInfo
{
public static void main(String args[])
{
try
{
String str="SELECT*from authors WHERE City LIKE'n'";
Class.forName("sun.jdbc.odbc.Jdbc.OdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:Data","","");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(str);
System.out.println("AuthorID\tFirst Name\tLast Name \tCity");
while(rs.next())
{
String id=rs.getString("au_id");
String fname=rs.getString("au_fname");
String lname=rs.getString("au_lname");
String City=rs.getString("City");
System.out.print(id+"\t");
if(fname.length()<=7)
System.out.print(fname+"\t");
else
System.out.print(fname+"\t");
if(lname.length()<+7)
System.out.print(lname+"\t");
System.out.print(City);
}
con.close();
}
catch(Exception ex)
{
System.out.println("Error Occured");
System.out.println("Error:"+ex);
}
}
}
