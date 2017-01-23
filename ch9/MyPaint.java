import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class MyPaint extends Applet
             implements MouseMotionListener {
   private int xPos, yPos = -10;

   public void init()
   {
     
      addMouseMotionListener( this );
   }
   public void paint( Graphics g )
   {
	g.setColor(Color.red);
	g.fillOval(xPos, yPos, 4, 4);
   }
   public void update(Graphics g)
   { paint(g);}
  
   public void mouseDragged( MouseEvent e )
      { 
        xPos = e.getX(); 
        yPos = e.getY();
        repaint(); 
      }

   public void mouseMoved( MouseEvent e )
      {  }
}


