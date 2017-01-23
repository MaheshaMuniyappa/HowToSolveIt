import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class TextDemo extends Applet
      implements  TextListener {
   private TextArea t1, t2;
  
   public void init() 
   {
      t1 = new TextArea(5, 20 );
      t1.addTextListener( this );
      add( t1 );

      t2 = new TextArea( 5, 20 );
      t2.setEditable( false );
      add( t2 );
   }

   public void textValueChanged( TextEvent e )
   {
      String str = t1.getText();
	 StringBuffer buf = new StringBuffer(str);
	 buf.reverse();
	 str = buf.toString();
	 t2.setText(str);
   }
}


