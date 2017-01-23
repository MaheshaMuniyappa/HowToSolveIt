// Fig. 11.09: ColorFrame.java
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

   public ColorFrame( String s )
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