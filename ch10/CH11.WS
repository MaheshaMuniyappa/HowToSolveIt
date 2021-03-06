                       ALGORITH� COMPUTER�    Advance� GUI
                       ------------------�    Topi� � 11
1� EVENTS:
----------
     Th� tw� model� o� Even� Handlin� are:
     a� Outwar� Ripplin� model
     b� Even� Delegatio� Model

1.1� Motivatio� fo� th� ne� model:
----------------------------------
     Certai� �flaw� i� th� origina� even� mode� �becam� �apparen� �
afte� �Jav� ha� bee� i� th� worl� lon� enoug� fo� larg� �program� �
t� b� developed.
     Th� majo� proble� wa� tha� a� even� coul� onl� b� handle� b� �
th� �componen� �tha� �originate� �th� even� �o� �b� �on� �o� �th� �
container� ��tha� �containe� �th� �originatin� �component� ��Thi� �
restrictio� violate� on� o� th� fundamenta� principle� o� objec�-�
oriente� �programming� �Functionalit� shoul� resid� i� �th� �mos� �
appropriat� class� Ofte� th� mos� appropriat� clas� fo� �handlin� �
a� �even� �i� �no� �� �membe� �o� �th� �originatin� ��component'� �
containmen� hierarchy.
     Anothe� �drawbac� �o� th� origina� mode� wa� �tha� �� �larg� �
numbe� �o� �CP� cycle� wer� waste� o� uninterestin� �events� �An� �
even� i� whic� � progra� ha� n� interes� woul� rippl� al� th� wa� �
throug� ��th� �containmen� �hierarch� �befor� �eventuall� ��bein� �
discarded� �Th� �origina� �mode� �provide� �n� �wa� �t� ��disabl� �
processin� o� irrelelevan� events.
     I� �th� ne� delegatio� model� � componen� ma� b� tol� �whic� �
objec� o� object� shoul� b� notifie� whe� th� componen� generate� �
� �particula� kin� o� event� I� � componen� i� no� intereste� �i� �
a� even� type� the� event� o� tha� typ� wil� no� b� propagated.

     Th� delegatio� mode� i� base� o� fou� concepts:
     a� Even� Classes
     b� Even� Listeners
     c� Explici� even� enabling
     d� Adapters

1.2ݠTh�Even� Classes:(Al� classe�belon�t� java.awt.even� package)
-----------------------
                              java.util.EventObject
                                       |
     ������������������������������������������������������������-
    �              �                  �              �           |
ActionEven� �AdjustmentEven� �� ComponentEven� ��ItemEven�   Tex�Event     
                                      |
                                      |
    -------------------------------------------------------------
    �                �                �             �            |
ContainerEven� ��FocusEven� ���   InputEven�    PaintEven� WindowEvent
                                      |
                                      |
                          --------------------------
                          �                        |
                      KeyEven�                  MouseEvent�1.3� Th� variou� Even� types:
-----------------------------

ActionEvent� generate� b� activatio� o� components
AdjustmentEvent� generate� b� adjustmen� o� adjustabl� components
                 suc� a� scrol� bars.
ContainerEvent� generate� whe� component� ar� adde� t� o� removed
                fro� � container.
FocusEvent� generate� whe� � componen� receive� inpu� focus.
ItemEvent� �generate� �whe� �a� ite� i� �selecte� �fro� �� �list� �
            choice� o� chec� box.
Ke�Event� generate� b� keyboar� activity.
MouseEvent� generate� b� mous� activity.
PaintEvent� generate� whe� � componen� i� painted.
TextEvent� generate� whe� � tex� componen� i� modified.
WindowEvent� generate� b� windo� activit� (suc� a� iconifying
             o� de-iconifying).

1.4� Even� Listeners:
---------------------
interfac�                      interfac� method
---------�                     ----------------
ActionListene�                 actionPerformed
AdjustmentListene�             adjustmentValueChanged
ComponentListene�              componentHidde�  etc
ContainerListene�              componentAdde� etc
FocusListene�                  focusGaine� etc
ItemListene�                   itemStateChanged
KeyListene�                    keyPresse� etc
MouseListene�                  mouseClicke� etc
MouseMotionListene�            mouseDragge� etc
TextListene�                   textValueChange� 
WindowListene�                 windowActivate� etc

Refe� t� earlie� note� fo� even� listener� examples.

1.5� Explici� Even� Enabling:
-----------------------------

Exampl� code:
-------------
clas� MyBt� extend� Butto� {
  publi� MyBtn(Strin� label� {
    super(label);
    enableEvents(AWTEvent.ACTION_EVENT_MASK);
  }

  publi� voi� processActionEvent(ActionEven� ae� {
    System.ut.println("Processin� a� actio� event.");
    super.processActionEvent(ae);
  }
}


�1.6� Adapters:
--------------
Whe� �a� �interfac� �i� �implemented� al� �th� �metho�s�tha� �ar� �
containe� �i� �th� �interfac� mus� b� implemented� �Thi� �ca� �b� �
avoide� b� usin� adapters� Th� adapte� o� � particula� �interfac� �
provide� �dumm� method� fo� al� th� method� o� �interface� �Whil� �
extendin� th� adapter� i� i� enoug� t� writ� th� function� o� ou� �
interest.

clas� MyListene� extend� WindowAdapte� {
  publi� voi� windowIconified(WindowEven� we� {
    /� proces� th� event
  }
}

Adapters:
---------
ComponentAdapter
ContainerAdapter
FocusAdapter
KeyAdapter
MouseAdapter
MouseMotionAdapter
WindowAdapter
.pa�[2� Listin� o� 'TextAreaDemo.java'
// TextAreaDemo.java
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
      TextComponent source = ( TextComponent ) e.getSource();
      t2.setText( source.getText() );
   }
}
.pa�[3� Listin� o� 'ScrollbarDemo.java'
// ScrollbarDemo.java
// Using Scrollbars to size an oval.
import java.applet.Applet;
import java.awt.*;

public class ScrollbarDemo extends Applet {
   private Scrollbar scrollHeight, scrollWidth;
   private OvalCanvas c;

   public void init() 
   {
      setSize( 215, 235 );

      c = new OvalCanvas();
      c.setSize( 200, 200 );
      c.setBackground( Color.yellow );

      scrollHeight = new Scrollbar( Scrollbar.VERTICAL, 100,
                                    1, 0, 200 );
      scrollHeight.addAdjustmentListener(
         new ScrollbarHandler( c, OvalCanvas.HEIGHT ) );

      scrollWidth = new Scrollbar( Scrollbar.HORIZONTAL, 100,
                                   1, 0, 200 );
      scrollWidth.addAdjustmentListener(
         new ScrollbarHandler( c, OvalCanvas.WIDTH ) );

      setLayout( null );  // No layout 

      add( scrollHeight );
      scrollHeight.setBounds( 200, 0, 15, 200 );

      add( scrollWidth );
      scrollWidth.setBounds( 0, 200, 200, 15 );

      add( c );
      c.setLocation( 0, 0 );
   }
}
[3.a� Listin� o� 'OvalCanvas.java'
// OvalCanvas.java
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
�   public void paint( Graphics g )
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
[3.b� Listin� o� 'ScrollbarHandler.java'
// ScrollbarHandler.java
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
.pa�[4� Listin� o� 'MyFrame.java'
// MyFrame.java
// Creating a subclass of Frame.
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;
//import com.deitel.jhtp2.ch11.ColorFrame;

public class MyFrame extends Applet implements ActionListener {
   private ColorFrame f;
   private Button showFrame;

   public void init() 
   {
      showFrame = new Button( "Show frame" );
      add( showFrame );
      showFrame.addActionListener( this );

      f = new ColorFrame( "Select a color" );
   }

   public void actionPerformed( ActionEvent e )
   {
      f.setVisible( true );  // show the frame
   }
}

[4.a� Listin� o� 'CloseWindow.java'
// CloseWindow.java
// Class to close a window.
import java.awt.event.*;

public class CloseWindow extends WindowAdapter {
   public void windowClosing( WindowEvent e )
   {
      e.getWindow().setVisible( false );
   }
}

[4.b� Listin� o� 'ColorFrame.java'
// ColorFrame.java
// ColorFrame class allows user to select a color and
// changes the frame's background to that color.
//package com.deitel.jhtp2.ch11;
import java.awt.*;
import java.awt.event.*;

public class ColorFrame extends Frame implements ItemListener {
   private Color colors[] = { Color.white, Color.red,
      Color.green, Color.blue, Color.magenta };
   private String colorNames[] =
      { "White", "Red", "Green", "Blue", "Magenta" };
   private Choice colorChoice;

�   public ColorFrame( String s )
   {
      // call base class constructor
      super( s );
      setSize( 275, 150 );
      addWindowListener( new CloseWindow() );

      colorChoice = new Choice();

      for ( int i = 0; i < colorNames.length; i++ )
         colorChoice.add( colorNames[ i ] );

      add( colorChoice, BorderLayout.NORTH );
      colorChoice.addItemListener( this );
   }

   public void itemStateChanged( ItemEvent e )
   {
      setBackground( colors[ colorChoice.getSelectedIndex() ] );
      repaint();
   }
}

[5� Listin� o� 'ScratchPad.java'
// ScratchPad.java
// Incorporating menus into a subclass of Frame.
import java.awt.*;
import java.awt.event.*;

public class ScratchPad extends Frame
      implements ActionListener, ItemListener {
   private TextArea t;
   private String fontNames[] =
      { "TimesRoman", "Courier", "Helvetica" };
   private String colorNames[] =
      { "Black", "Red", "Green", "Blue" };
   private Color colorValues[] =
      { Color.black, Color.red, Color.green, Color.blue };

   private MenuBar bar;
   private Menu formatMenu, fontMenu, colorMenu;
   private MenuItem fonts[], colors[];
   private CheckboxMenuItem readOnly;

   public ScratchPad() 
   {
      super( "ScratchPad Application" );
      setSize( 300, 200 );

      t = new TextArea( "", 2, 20,
                        TextArea.SCROLLBARS_VERTICAL_ONLY);
      add( t, BorderLayout.CENTER );

      t.setFont( new Font( "TimesRoman", Font.PLAIN, 12 ) );
      t.setForeground( colorValues[ 0 ] );�
      // create menubar
      bar = new MenuBar();

      // create the format menu
      formatMenu = new Menu( "Format" );

      // create font menu
      fontMenu = new Menu( "Font" );

      fonts = new MenuItem[ fontNames.length ];

      for ( int i = 0; i < fonts.length; i++ ) {
         fonts[ i ] = new MenuItem( fontNames[ i ] );
         fontMenu.add( fonts[ i ] );
         fonts[ i ].addActionListener( this );
      }

      formatMenu.add( fontMenu );
      formatMenu.addSeparator();

      // create color menu
      colorMenu = new Menu( "Color" );

      colors = new MenuItem[ colorNames.length ];

      for ( int i = 0; i < colors.length; i++ ) {
         colors[ i ] = new MenuItem( colorNames[ i ] );
         colorMenu.add( colors[ i ] );
         colors[ i ].addActionListener( this );
      }

      formatMenu.add( colorMenu );
      formatMenu.addSeparator();

      // create "read-only" menu item
      readOnly = new CheckboxMenuItem( "Read-Only" );
      readOnly.addItemListener( this );

      formatMenu.add( readOnly );

      // add menu to menu bar
      bar.add( formatMenu );

      // set the menubar for the frame
      setMenuBar( bar );
 
      setVisible( true );
   }





�   // Handle font and color menu selections
   public void actionPerformed( ActionEvent e )
   {
      for ( int i = 0; i < fonts.length; i++ )
         if ( e.getSource() == fonts[ i ] ) {
            t.setFont( new Font( fonts[ i ].getLabel(),
               Font.PLAIN, 12 ) );
            break;
         }

      for ( int i = 0; i < colors.length; i++ )
         if ( e.getSource() == colors[ i ] ) {
            t.setForeground( colorValues[ i ] );
            break;
         }
   }

   // Handle "read-only" menu selections
   public void itemStateChanged( ItemEvent e )
   {
      t.setEditable( ! t.isEditable() );
   }
}

[5.a� Listin� o� 'ScratchPadTest.java'
// ScratchPadTest.java
// Class to test ScratchPad.

public class ScratchPadTest {
   public static void main( String args[] )
   {
      ScratchPad e = new ScratchPad();
      e.addWindowListener( new CloseWindowAndExit() );
   }
}

5.b� Listin� of CloseWindowAndExit.java

import java.awt.event.*;

public class CloseWindowAndExit extends WindowAdapter {
   public void windowClosing( WindowEvent e )
   {
      System.exit( 0 );
   }
}
