// Fig. 10.19: MouseTracker.java
// Demonstrating mouse events.
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class MouseTracker extends Applet
             implements MouseListener, MouseMotionListener {
   private int xPos, yPos = -10;  // off screen for 1st paint
   private String s = "";

   public void init()
   {
      // applet listens to its own mouse events
      addMouseListener( this );
      addMouseMotionListener( this );
   }

   public void paint( Graphics g )
   {
      g.drawString( s + " @ [" + xPos + ", " + yPos + "]",
                    xPos, yPos );
   }

   private void setValues( String event, int x, int y )
   {
      s = event;
      xPos = x;
      yPos = y;
      repaint();
   }

   // MouseListener event handlers
   public void mouseClicked( MouseEvent e )
      { setValues( "Clicked", e.getX(), e.getY() ); }

   public void mousePressed( MouseEvent e )
      { setValues( "Pressed", e.getX(), e.getY() ); }

   public void mouseReleased( MouseEvent e )
      { setValues( "Released", e.getX(), e.getY() ); }

   public void mouseEntered( MouseEvent e )
      { showStatus( "Mouse in applet area" ); }

   public void mouseExited( MouseEvent e )
      { showStatus( "Mouse outside applet area" ); }

   // MouseMotionListener event handlers
   public void mouseDragged( MouseEvent e )
      { setValues( "Dragging", e.getX(), e.getY() ); }

   public void mouseMoved( MouseEvent e )
      { setValues( "Moving", e.getX(), e.getY() ); }
}
