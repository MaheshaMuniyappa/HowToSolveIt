// Fig. 11.08: ScrollbarHandler.java
// Class to handle Scrollbar events.
import java.awt.event.*;

public class ScrollbarHandler implements AdjustmentListener {
   private OvalCanvas canvas;
   private int dimension;

   public ScrollbarHandler( OvalCanvas c, int d )
   {
      canvas = c;
      dimension = d;
   }

   public void adjustmentValueChanged( AdjustmentEvent e )
   {
      if ( dimension == OvalCanvas.WIDTH ) 
         canvas.setOvalWidth( e.getValue() );
      else if ( dimension == OvalCanvas.HEIGHT ) 
         canvas.setOvalHeight( e.getValue() );
   }
}
