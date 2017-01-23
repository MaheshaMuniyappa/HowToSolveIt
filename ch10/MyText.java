import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class MyText extends Applet
      implements TextListener {
   private TextField t1;
   
   public void init() 
   {
    
      t1 = new TextField(20);
      t1.addTextListener( this );
      add( t1 );

   }


   public void textValueChanged( TextEvent e )
   {
      String s = t1.getText();
      StringBuffer buf = new StringBuffer(s);
      buf.reverse();
      s = buf.toString();
      showStatus(s);
   }
}



