                       ALGORITHÍ COMPUTERÓ    Advanceä GUI
                       ------------------­    Topiã ­ 11
1Ý EVENTS:
----------
     Thå twï modeló oæ Evenô Handlinç are:
     a© Outwarä Ripplinç model
     b© Evenô Delegatioî Model

1.1Ý Motivatioî foò thå ne÷ model:
----------------------------------
     Certaiî  flawá iî thå originaì evenô modeì  becamå  apparenô 
afteò  Javá haä beeî iî thå worlä lonç enougè foò largå  programó 
tï bå developed.
     Thå majoò probleí waó thaô aî evenô coulä onlù bå handleä bù 
thå  componenô  thaô  originateä  thå evenô  oò  bù  onå  oæ  thå 
containeró   thaô  containeä  thå  originatinç  component®   Thió 
restrictioî violateä onå oæ thå fundamentaì principleó oæ objecô-
orienteä  programmingº  Functionalitù shoulä residå iî  thå  mosô 
appropriatå class® Ofteî thå mosô appropriatå clasó foò  handlinç 
aî  evenô  ió  noô  á  membeò  oæ  thå  originatinç   component'ó 
containmenô hierarchy.
     Anotheò  drawbacë  oæ thå originaì modeì waó  thaô  á  largå 
numbeò  oæ  CPÕ cycleó werå wasteä oî uninterestinç  events®  Anù 
evenô iî whicè á prograí haä nï interesô woulä ripplå alì thå waù 
througè   thå  containmenô  hierarchù  beforå  eventuallù   beinç 
discarded®  Thå  originaì  modeì  provideä  nï  waù  tï   disablå 
processinç oæ irrelelevanô events.
     Iî  thå ne÷ delegatioî model¬ á componenô maù bå tolä  whicè 
objecô oò objectó shoulä bå notifieä wheî thå componenô generateó 
á  particulaò kinä oæ event® Iæ á componenô ió noô interesteä  iî 
aî evenô type¬ theî eventó oæ thaô typå wilì noô bå propagated.

     Thå delegatioî modeì ió baseä oî fouò concepts:
     a© Evenô Classes
     b© Evenô Listeners
     c© Expliciô evenô enabling
     d© Adapters

1.2Ý Thå Evenô Classes:(Alì classeó belonç tï java.awt.evenô package)
-----------------------
                              java.util.EventObject
                                       |
     ­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­-
    ü              ü                  ü              ü           |
ActionEvenô  AdjustmentEvenô    ComponentEvenô   ItemEvenô   TexôEvent     
                                      |
                                      |
    -------------------------------------------------------------
    ü                ü                ü             ü            |
ContainerEvenô   FocusEvenô       InputEvenô    PaintEvenô WindowEvent
                                      |
                                      |
                          --------------------------
                          ü                        |
                      KeyEvenô                  MouseEventŠ1.3Ý Thå variouó Evenô types:
-----------------------------

ActionEventº generateä bù activatioî oæ components
AdjustmentEventº generateä bù adjustmenô oæ adjustablå components
                 sucè aó scrolì bars.
ContainerEventº generateä wheî componentó arå addeä tï oò removed
                froí á container.
FocusEventº generateä wheî á componenô receiveó inpuô focus.
ItemEventº  generateä  wheî  aî iteí ió  selecteä  froí  á  list¬ 
            choice¬ oò checë box.
KeùEventº generateä bù keyboarä activity.
MouseEventº generateä bù mouså activity.
PaintEventº generateä wheî á componenô ió painted.
TextEventº generateä wheî á texô componenô ió modified.
WindowEventº generateä bù windo÷ activitù (sucè aó iconifying
             oò de-iconifying).

1.4Ý Evenô Listeners:
---------------------
interfacå                      interfacå method
---------­                     ----------------
ActionListeneò                 actionPerformed
AdjustmentListeneò             adjustmentValueChanged
ComponentListeneò              componentHiddeî  etc
ContainerListeneò              componentAddeä etc
FocusListeneò                  focusGaineä etc
ItemListeneò                   itemStateChanged
KeyListeneò                    keyPresseä etc
MouseListeneò                  mouseClickeä etc
MouseMotionListeneò            mouseDraggeä etc
TextListeneò                   textValueChangeä 
WindowListeneò                 windowActivateä etc

Refeò tï earlieò noteó foò evenô listeneró examples.

1.5Ý Expliciô Evenô Enabling:
-----------------------------

Examplå code:
-------------
clasó MyBtî extendó Buttoî {
  publiã MyBtn(Strinç label© {
    super(label);
    enableEvents(AWTEvent.ACTION_EVENT_MASK);
  }

  publiã voiä processActionEvent(ActionEvenô ae© {
    System.ut.println("Processinç aî actioî event.");
    super.processActionEvent(ae);
  }
}


Š1.6Ý Adapters:
--------------
Wheî  aî  interfacå  ió  implemented¬ alì  thå  methoäs thaô  arå 
containeä  iî  thå  interfacå musô bå implemented®  Thió  caî  bå 
avoideä bù usinç adapters® Thå adapteò oæ á particulaò  interfacå 
provideó  dummù methodó foò alì thå methodó oæ  interface®  Whilå 
extendinç thå adapter¬ iô ió enougè tï writå thå functionó oæ ouò 
interest.

clasó MyListeneò extendó WindowAdapteò {
  publiã voiä windowIconified(WindowEvenô we© {
    /¯ procesó thå event
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
.paŠ[2Ý Listinç oæ 'TextAreaDemo.java'
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
.paŠ[3Ý Listinç oæ 'ScrollbarDemo.java'
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
[3.aÝ Listinç oæ 'OvalCanvas.java'
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
Š   public void paint( Graphics g )
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
[3.bÝ Listinç oæ 'ScrollbarHandler.java'
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
.paŠ[4Ý Listinç oæ 'MyFrame.java'
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

[4.aÝ Listinç oæ 'CloseWindow.java'
// CloseWindow.java
// Class to close a window.
import java.awt.event.*;

public class CloseWindow extends WindowAdapter {
   public void windowClosing( WindowEvent e )
   {
      e.getWindow().setVisible( false );
   }
}

[4.bÝ Listinç oæ 'ColorFrame.java'
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

Š   public ColorFrame( String s )
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

[5Ý Listinç oæ 'ScratchPad.java'
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
      t.setForeground( colorValues[ 0 ] );Š
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





Š   // Handle font and color menu selections
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

[5.aÝ Listinç oæ 'ScratchPadTest.java'
// ScratchPadTest.java
// Class to test ScratchPad.

public class ScratchPadTest {
   public static void main( String args[] )
   {
      ScratchPad e = new ScratchPad();
      e.addWindowListener( new CloseWindowAndExit() );
   }
}

5.bÝ Listinç of CloseWindowAndExit.java

import java.awt.event.*;

public class CloseWindowAndExit extends WindowAdapter {
   public void windowClosing( WindowEvent e )
   {
      System.exit( 0 );
   }
}
