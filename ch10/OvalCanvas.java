// Fig. 11.08: OvalCanvas.java
// A customized Canvas class.
import java.awt.*;

public class OvalCanvas extends Canvas {
   public static int WIDTH = 1, HEIGHT = 2;
   private int ovalWidth, ovalHeight;

   public OvalCanvas()
   {
      setOvalWidth( 100 );
      setOvalHeight( 100 );
   }

   public void paint( Graphics g )
   {
      g.drawOval( 0, 0, ovalWidth, ovalHeight );
   }

   public void setOvalWidth( int w )
   {
      ovalWidth = w;
      repaint();
   }

   public void setOvalHeight( int h )
   {
      ovalHeight = h;
      repaint();
   }
}
