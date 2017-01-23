import java.awt.*;
import java.awt.event.*;

class ScratchPad extends Frame
      implements ActionListener {
   private TextField t1, t2;
   private Label l1;
  
   private MenuBar bar;
   private Menu calc;
   private MenuItem it1, it2;
 
   public ScratchPad() 
   {
      super( "ScratchPad Application" );
      setSize( 300, 200 );
	
      setLayout(new GridLayout(2,2));

      t1 = new TextField(20);
      add( t1 );
	t2 = new TextField(20);
      add( t2 );
      l1 = new Label("ANS");
      add(l1);

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
   }

}

public class ScratchPadTest {
   public static void main( String args[] )
   {
      ScratchPad e = new ScratchPad();
      e.addWindowListener( new CloseWindowAndExit() );
   }
}

		