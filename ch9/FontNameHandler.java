// Fig. 10.12: FontNameHandler.java
// Class capable of listening for events from a Choice
// or List object and setting the font on the specified
// Component passed to the constructor.
//package com.deitel.jhtp2.ch10;
import java.awt.*;
import java.awt.event.*;

public class FontNameHandler implements ItemListener {
   private Component component;

   public FontNameHandler( Component c ) { component = c; }

   public void itemStateChanged( ItemEvent e )
   {
      component.setFont( new Font( e.getItem().toString(),
         component.getFont().getStyle(), 
         component.getFont().getSize() ) );
   }
}
