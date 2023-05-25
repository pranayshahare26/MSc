import java.awt.*;
class MyMenu extends Frame
{
MenuBar bar;
Menu menu1,menu2,menu3;
MenuItem menuItem1,menuItem2,menuItem3,menuItem4;
MyMenu(String s)
{
super(s);
setSize(400,400);
bar = new MenuBar();
menu1 = new Menu("FILE");
menu2 = new Menu("EDIT");
menu3 = new Menu("VIEW");
menuItem1 = new MenuItem("NEW");
menuItem2 = new MenuItem("OPEN");
menuItem3 = new MenuItem("SAVE");
menuItem4 = new MenuItem("EXIT");
menu1.add(menuItem1);
menu1.add(menuItem2);
menu1.add(menuItem3);
menu1.add(menuItem4);
bar.add(menu1);
bar.add(menu2);
bar.add(menu3);
setMenuBar(bar);
}
public static void main(String args[])
{
MyMenu m = new MyMenu("MyMenu");
m.setVisible(true);
}
}
