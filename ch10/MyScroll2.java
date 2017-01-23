import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class MyScroll2 extends Applet implements AdjustmentListener {
   private Scrollbar s1;
   int rad = 100;
   
   public void init() 
   {
      setSize( 215, 235 );


     
      s1 = new Scrollbar( Scrollbar.HORIZONTAL, 100, 1, 0, 200 );
      s1.addAdjustmentListener(this);

      setLayout(null);
      add( s1);
      s1.setBounds(  0, 200, 200, 15 );

   }

   public void paint(Graphics g)
   {
     g.drawOval(100-rad,100-rad,2*rad, 2*rad);
   }

   public void adjustmentValueChanged( AdjustmentEvent e )
   {
      rad = e.getValue();
      repaint();
   }
}








