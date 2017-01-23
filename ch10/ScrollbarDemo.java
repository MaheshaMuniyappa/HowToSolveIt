// Fig. 11.08: ScrollbarDemo.java
// Using Scrollbars to size an oval.
import java.applet.Applet;
import java.awt.*;

public class ScrollbarDemo extends Applet {
   private Scrollbar scrollHeight, scrollWidth;
   private OvalCanvas c;

   public void init() 
   {
      setSize( 215, 235 );

      c = new OvalCanvas();
      c.setSize( 200, 200 );
      c.setBackground( Color.yellow );

      scrollHeight = new Scrollbar( Scrollbar.VERTICAL, 100,
                                    1, 0, 200 );
      scrollHeight.addAdjustmentListener(
         new ScrollbarHandler( c, OvalCanvas.HEIGHT ) );

      scrollWidth = new Scrollbar( Scrollbar.HORIZONTAL, 100,
                                   1, 0, 200 );
      scrollWidth.addAdjustmentListener(
         new ScrollbarHandler( c, OvalCanvas.WIDTH ) );

      setLayout( null );  // No layout 

      add( scrollHeight );
      scrollHeight.setBounds( 200, 0, 15, 200 );

      add( scrollWidth );
      scrollWidth.setBounds( 0, 200, 200, 15 );

      add( c );
      c.setLocation( 0, 0 );
   }
}