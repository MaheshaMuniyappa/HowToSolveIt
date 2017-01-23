import java.applet.Applet;
import java.awt.*;

public class RandLines extends Applet
{
	public void paint(Graphics g)
	{
		for(int i = 0; i < 100; i++) {
			int x1 = (int)(Math.random()*300);
			int x2 = (int)(Math.random()*300);
			int y1 = (int)(Math.random()*300);
			int y2 = (int)(Math.random()*300);
			
			int red = (int)(1 + Math.random()*255);
			int green = (int)(1 + Math.random()*255);
			int blue = (int)(1 + Math.random()*255);

			Color c = new Color(red,green,blue);
			
			g.setColor(c);
			g.drawLine(x1,y1,x2,y2);
		}
	}
}