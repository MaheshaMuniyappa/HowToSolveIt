// Fig. 10.16: MyList.java
// Creating a List.
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class MyList extends Applet
             implements ActionListener, ItemListener {
   private List colorList;

   private String colorNames[] =
      { "Black", "Blue", "Cyan", "Dark Gray", "Gray", "Green",
        "Light Gray", "Magenta", "Orange", "Pink", "Red",
        "White", "Yellow" };

   private Color colors[] =
      { Color.black, Color.blue, Color.cyan, Color.darkGray,
        Color.gray, Color.green, Color.lightGray,
        Color.magenta, Color.orange, Color.pink, Color.red,
        Color.white, Color.yellow };

   public void init()
   {
      // create a list with 5 items visible
      // do not allow multiple selections
      colorList = new List( 5, false );
      colorList.addActionListener( this );
      colorList.addItemListener( this );

      // add items to the list
      for ( int i = 0; i < colorNames.length; i++ )
         colorList.add( colorNames[ i ] );

      // add list to applet
      add( colorList );
      colorList.select(0);
   }

   public void actionPerformed( ActionEvent e )
   {
      setBackground( colors[ colorList.getSelectedIndex() ] );
      repaint();     // update applet              
   }

   public void itemStateChanged( ItemEvent e )
   {
      showStatus( colorList.getSelectedItem() + "; index " +
                  colorList.getSelectedIndex() );
   }
}
