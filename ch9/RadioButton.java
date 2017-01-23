// Fig. 10.15: RadioButton.java
// Creating radio buttons using CheckboxGroup and Checkbox.
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class RadioButton extends Applet
             implements ItemListener {
   private TextField t;
   private Font plainFont, boldFont, italicFont, boldItalicFont;
   private CheckboxGroup fontStyle;
   private Checkbox plain, bold, italic, boldItalic;

   public void init()
   {
      t = new TextField( "Watch the font style change", 40 );
      add( t ); 

      // Create CheckboxGroup to maintain radio buttons
      fontStyle = new CheckboxGroup(); 

      plain = new Checkbox( "Plain", fontStyle, true );
      plain.addItemListener( this );
      add( plain );
      bold = new Checkbox( "Bold", fontStyle, false );
      bold.addItemListener( this );
      add( bold );
      italic = new Checkbox( "Italic", fontStyle, false );
      italic.addItemListener( this );
      add( italic );
      boldItalic = new Checkbox( "Bold/Italic",
                                 fontStyle, false );
      boldItalic.addItemListener( this );
      add( boldItalic );

      plainFont = new Font( "Serif", Font.PLAIN, 14 );
      boldFont = new Font( "Serif", Font.BOLD, 14 );
      italicFont = new Font( "Serif", Font.ITALIC, 14 );
      boldItalicFont = new Font( "Serif",
                                 Font.BOLD + Font.ITALIC, 14 );
      t.setFont( plainFont );
   }

   public void itemStateChanged( ItemEvent e )
   {
      if ( e.getSource() == plain ) 
         t.setFont( plainFont );
      else if ( e.getSource() == bold ) 
         t.setFont( boldFont );
      else if ( e.getSource() == italic ) 
         t.setFont( italicFont );
      else if ( e.getSource() == boldItalic ) 
         t.setFont( boldItalicFont );
   }
}
