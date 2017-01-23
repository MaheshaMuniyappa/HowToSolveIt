// Fig. 11.09: CloseWindow.java
// Class to close a window.
//package com.deitel.jhtp2.ch11;
import java.awt.event.*;

public class CloseWindow extends WindowAdapter {
   public void windowClosing( WindowEvent e )
   {
      e.getWindow().setVisible( false );
   }
}