import java.applet.Applet;
import java.awt.*;

public class RandCircles extends Applet
{
	public void paint(Graphics g)
	{
		for(int i = 0; i < 100; i++) {
			int x1 = (int)(Math.random()*300);
			int y1 = (int)(Math.random()*300);

			int r = 10 + (int)(Math.random()*20);
                        int x2 = x1 + r;
                        int y2 = y1 + r; 
						
			int red = (int)(1 + Math.random()*255);
			int green = (int)(1 + Math.random()*255);
			int blue = (int)(1 + Math.random()*255);

			Color c = new Color(red,green,blue);
			
			g.setColor(c);
			g.drawOval(x1,y1,x2,y2);
		}
	}
}