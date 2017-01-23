import java.applet.*;
import java.awt.*;
import java.awt.event.*;

public class Animals extends Applet
             implements ActionListener {
   
   private Button b1, b2, b3, b4;
   Dog d;
   Cat c;

   public void init()
   {
      setLayout(new GridLayout(3, 2));
      
      b1 = new Button( "Desc Dog" );
      b1.addActionListener( this );
      add( b1 );
      b2 = new Button( "Desc Cat" );
      b2.addActionListener( this );
      add( b2 );
      b3 = new Button( "Bark" );
      b3.addActionListener( this );
      add( b3 );
      b4 = new Button( "Meu" );
      b4.addActionListener( this );
      add( b4 );

      d = new Dog("Tommy", 120.f, "Fries");
      c = new Cat("Pussy", 30.0f, "Fish");
   }

   public void actionPerformed( ActionEvent e )
   {
     if ( e.getSource() == b1 ) 
         showStatus(d.Describe());
      else if ( e.getSource() == b2 ) 
         showStatus(c.Describe());
      else if ( e.getSource() == b3) 
         showStatus(d.Bark());
       else 
	 showStatus(c.Meu());
   }
}

class Animal
{
	String name;
	float weight;
	public Animal()
	{
		this("Unknown", 100.0f);
	} 
	public Animal(String n, float w)
	{
		name = n;
		weight = w;
	} 
	public String Describe()
	{
		return "My Name is " + name + " My Weight is " + weight;
	}
}

class Dog extends Animal
{
	String food;
	public Dog()
	{
		super();
		food = "Dog Food";
	}
	public Dog(String n, float w)
	{
		this(n, w, "Dog Food");
	}
	public Dog(String n, float w, String f)
	{
		super(n, w);
		food = f;
	}
	public String Describe()
	{
		return super.Describe() + " My Food = " + food;
	}
	public String Bark()
	{
		return "I am Barking ...";
	}
}

class Cat extends Animal
{
	String food;
	public Cat()
	{
		super();
		food = "Cat Food";
	}
	public Cat(String n, float w)
	{
		this(n, w, "Cat Food");
	}
	public Cat(String n, float w, String f)
	{
		super(n, w);
		food = f;
	}
	public String Describe()
	{
		return super.Describe() + " My Food = " + food;
	}
	public String Meu()
	{
		return "I am Meuing ...";
	}
}

