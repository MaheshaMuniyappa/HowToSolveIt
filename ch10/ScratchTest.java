import java.awt.*;
import java.awt.event.*;

class ScratchPad extends Frame
      implements ActionListener {
   private TextField t1, t2, t3;
  
   private MenuBar bar;
   private Menu calc;
   private MenuItem it1, it2;
 
   public ScratchPad() 
   {
      super( "ScratchPad Application" );
      setSize( 300, 200 );
      setLayout(new GridLayout(3,1));

      t1 = new TextField(20);
      add( t1 );
	t2 = new TextField(20);
      add( t2 );
	t3 = new TextField(20);
      add( t3 );
	t3.setEditable(false);

      bar = new MenuBar();

      calc = new Menu( "Calculate" );

      it1 = new MenuItem( "ADD" );
      it2 = new MenuItem( "MULTIPLY" );
 
      calc.add( it1 );
	calc.add(it2);
      it1.addActionListener( this );
it2.addActionListener( this );

      bar.add( calc );

      setMenuBar( bar );
 
      setVisible( true );
   }
   public void actionPerformed( ActionEvent e )
   {

      String s;
      int v1, v2, ans=0; 
      s = t1.getText();  v1 = Integer.parseInt(s);
      s = t2.getText();  v2 = Integer.parseInt(s);
      if ( e.getSource() == it1 ) 
         ans = v1 + v2;
      else if ( e.getSource() == it2 ) 
         ans = v1 * v2;
      t3.setText("ANS = " + ans);
   }

}

public class ScratchTest {
   public static void main( String args[] )
   {
      ScratchPad e = new ScratchPad();
      e.addWindowListener(new CloseWindowAndExit());
   }
}
