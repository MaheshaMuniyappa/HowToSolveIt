import java.applet.*;
import java.awt.*;

public class Salary extends Applet
{
	private String name;
	private int sal;
	
	public void init() {
		name = getParameter("NAME");
		sal = Integer.parseInt(getParameter("SAL"));
	}
	public void paint(Graphics g)
	{
		g.drawString("Name is " + name,20,20);
		g.drawString("Salary Expected is " + sal,20,80);
	}
}
