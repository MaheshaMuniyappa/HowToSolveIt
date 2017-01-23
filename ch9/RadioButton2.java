import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class RadioButton2 extends Applet
             implements ItemListener {
   private TextField t1, t2;
   private CheckboxGroup grp;
   private Checkbox c1, c2, c3, c4;

   public void init()
   {
      setLayout(new GridLayout(3,2));

      t1 = new TextField( 10 );
      add( t1 ); 
      t2 = new TextField( 10 );
      add( t2 ); 

      grp = new CheckboxGroup(); 

      c1 = new Checkbox( "Add", grp, true );
      c1.addItemListener( this );
      add( c1 );

      c2 = new Checkbox( "Subtract", grp, false );
      c2.addItemListener( this );
      add( c2 );

      c3 = new Checkbox( "Multiply", grp, false );
      c3.addItemListener( this );
      add( c3 );

      c4 = new Checkbox( "Divide", grp, false );
      c4.addItemListener( this );
      add( c4 );
   }
   public void itemStateChanged( ItemEvent e )
   {
      int v1, v2, ans = 0;
      String s;
      s = t1.getText(); v1 = Integer.parseInt(s);
      s = t2.getText(); v2 = Integer.parseInt(s);
     
      if(e.getSource() == c1) ans = v1 + v2;
      else if(e.getSource() == c2) ans = v1 - v2;
      else if(e.getSource() == c3) ans = v1 * v2;
      else if(e.getSource() == c4) ans = v1 / v2;

      showStatus("ANS = " + ans);

   }
}

