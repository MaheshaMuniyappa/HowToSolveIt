import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class ScrollTest extends Applet 
implements AdjustmentListener {
   private Scrollbar s1, s2, s3;
   private Canvas c;
   int red = 100, green=0, blue=0;

   public void init() 
   {
      setSize( 215, 260 );

      c = new Canvas();
      c.setSize( 200, 200 );
      c.setBackground( new Color(red, green, blue) );

      s1 = new Scrollbar( Scrollbar.HORIZONTAL, red, 1, 0, 200 );
      s1.addAdjustmentListener(this);

      s2 = new Scrollbar( Scrollbar.HORIZONTAL, green, 1, 0, 200 );
      s2.addAdjustmentListener(this);

      s3 = new Scrollbar( Scrollbar.HORIZONTAL, blue, 1, 0, 200 );
      s3.addAdjustmentListener(this);


      setLayout( null );  // No layout 

      add( s1 );
      s1.setBounds( 0, 200, 200, 15 );
      add( s2 );
      s2.setBounds( 0, 220, 200, 15 );
      add( s3 );
      s3.setBounds( 0, 240, 200, 15 );

      add( c );
      c.setLocation( 0, 0 );
   }
   public void adjustmentValueChanged( AdjustmentEvent e )
   {
      red = s1.getValue();
	green = s2.getValue();
	blue = s3.getValue();
	c.setBackground(new Color(red, green, blue));
   }
}

