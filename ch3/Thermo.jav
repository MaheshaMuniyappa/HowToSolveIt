import java.applet.*;
import java.awt.*;

public class Thermo extends Applet
{
	private String label;
	private boolean isCelsius;
	private int increment;
	
	public void init() {
		label = getParameter("LABEL");
		isCelsius = getParameter("scale").equalsIgnoreCase("CELCIUS");
		increment = Integer.parseInt(getParameter("INCREMENT"));
	}
	public void paint(Graphics g)
	{
		g.drawString("Label is " + label,20,20);
		g.drawString("Is Scale celcius?: " + isCelsius,20,50);
		g.drawString("Increment is " + increment,20,80);
	}
}
