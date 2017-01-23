// Fig. 11.3: TextAreaDemo.java
// Copying selected text from one text area to another.
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class TextAreaDemo extends Applet
      implements ActionListener, TextListener {
   private TextArea t1, t2;
   private Button copy;

   public void init() 
   {
      String s = "This is a demo string to illustrate " +
                 "copying text from one TextArea to " +
                 "another TextArea using an external event";

      t1 = new TextArea( s, 5, 20, TextArea.SCROLLBARS_NONE );
      t1.addTextListener( this );
      add( t1 );

      copy = new Button( "Copy >>>" );
      copy.addActionListener( this );
      add( copy );

      t2 = new TextArea( 5, 20 );
      t2.setEditable( false );
      add( t2 );
   }

   public void actionPerformed( ActionEvent e )
   {
      t2.setText( t1.getSelectedText() );
   }

   public void textValueChanged( TextEvent e )
   {
      TextComponent source = (TextComponent) e.getSource();
      t2.setText( source.getText() );
   }
}

      
                                                
