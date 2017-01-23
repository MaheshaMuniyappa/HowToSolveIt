import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class MyScroll extends Applet implements AdjustmentListener {
   private Scrollbar sb;
   int rad;

   public void init() 
   {
      setSize( 215, 235 );


      sb = new Scrollbar( Scrollbar.HORIZONTAL, 100, 1, 0, 200 );
      sb.addAdjustmentListener(this);

      setLayout( null );  // No layout 
     

      add( sb );
      sb.setBounds( 0, 200, 200, 15 );

   }


   public void adjustmentValueChanged( AdjustmentEvent e )
   {
       rad = e.getValue();
       repaint();
   }
    
   public void paint(Graphics g)
   {
      g.setColor(Color.red);
      g.drawOval(100,100,rad,rad);
   }
}
