               ALGORITHÍ COMPUTERÓ     Inheritancå ¦ Polymorphism
               ------------------­     Topiã ­ 8
               
INHERITANCE:
------------
     Inheritancå  ió onå oæ thå cornerstoneó  oæ  Objecô-Orienteä 
Programminç  becauså  iô  allowó  thå  creatioî  oæ   hierarchiaì 
classifications®  Usinç  Inheritance¬ yoõ caî  creatå  á  generaì 
clasó thaô defineó traitó commoî tï seô relateä items® Thió clasó 
caî  bå  inheriteä bù other¬ morå specifiã classes¬  eacè  addinç 
thoså  thingó  arå uniquå tï it® Iî thå terminologù  oæ  Java¬  á 
clasó thaô ió inheriteä ió calleä á 'superclass'® Thå clasó  thaô 
doeó thå inheritinç ió calleä á 'subclass'® Thereforå á  subclasó 
ió á specializeä versioî oæ á superclass® Iô inheritó alì oæ  thå 
instancå variableó anä methodó defineä bù thå superclasó anä addó 
itó own¬ uniquå elements.

POLYMORPHISM:
-------------
	Polymorphisí ió thå thirä essentiaì featurå oæ aî objecô-
orienteä   programminç  language¬  afteò  datá  abstractioî   anä 
inheritance® 
	Iô provideó anotheò dimensioî oæ separatioî oæ  interfacå 
froí  implementation¬  tï decouplå whaô  froí  how®  Polymorphisí 
allowó improveä codå organizatioî anä readabilitù aó welì aó  thå 
creatioî  oæ  extensiblå programó thaô caî bå  "grown¢  noô  onlù 
durinç  thå  originaì creatioî oæ thå projecô buô alsï  wheî  ne÷ 
featureó arå desired.

Examples:
---------
[1İ Listinç oæ DemoBoxWeight.java

// This program uses inheritance to extend Box.
class Box
{
	double width;
	double height;
	double depth;
	
	// construct clone of an object
	Box(Box ob)
	{
		width=ob.width;
		height=ob.height;
		depth=ob.depth;
	}
	
	// constructor used when all dimensions specified
	Box(double w, double h, double d)
	{
		width=w;
		height=h;
		depth=d;
	}Š	//constructor used when no dimensions specified
	Box()
	{
		width = -1;		
		height = -1;
		depth = -1;
	}

	// constructor used when cube is created
	Box (double len)
	{
		width = height = depth = len;
	}

	// compute and return volume
	double volume() 
	{
		return width * height * depth;
	}
}

// Here, Box is extended to include weight.
class BoxWeight extends Box  
{
	double weight;
	
	// constructor for BoxWeight
	BoxWeight (double w, double h, double d, double m ) 
	{
		width = w;
		height = h;
		depth = d;
		weight = m;
	}
}

class DemoBoxWeight
{
     public static void main(String args[])
     {
          BoxWeight mybox1 = new BoxWeight(10, 20, 15, 34.3);
	  BoxWeight mybox2 = new BoxWeight(2, 3, 4, 0.076);
	  double vol;
		
	  vol = mybox1.volume();
	  System.out.println("Volume of mybox1 us " + vol);
	  System.out.println( "Weight of mybox2 " + mybox1.weight);
	  System.out.println();
		
	  vol = mybox2.volume();
	  System.out.println("Volume of mybox2 is " + vol);
	  System.out.println("Weight of mybox2 is " + mybox2.weight);
     }
}
Š[2İ Listinç oæ 'DemoSuper.java'

// A complete implementation of BoxWeight.

class Box
{
	private double width;
	private double height;
	private double depth;
	
	// construct clone of an object

	Box(Box ob)
	{
		//pass object to constructor
		width=ob.width;
		height=ob.height;
		depth=ob.depth;
	}
	
	// constructor used when all dimensions specified

	Box(double w, double h, double d)
	{
		width=w;
		height=h;
		depth=d;
	}
	
	//constructor used when no dimensions specified

	Box()
	{
		width = -1;		
		height = -1;
		depth = -1;
	}

	// constructor used when cube is created

	Box (double len)
	{
		width = height = depth = len;
	}

	// compute and return volume

	double volume() 
	{
		return width * height * depth;
	}
}


Š// BoxWeight now fully implements all constuctors
class BoxWeight extends Box  
{
	double weight;
	
	// construct clone of an object
	BoxWeight (BoxWeight ob) 
	{
		// pass object to constructor
		super(ob);
		
		weight = ob.weight;
	}

	// constructor when all parameters are specified
	BoxWeight (double w, double h, double d, double m) 
	{
		super(w,h,d);
		// call superclass constructor
		weight=m;
	}

	// default constructor
	BoxWeight()
	{
		super();
		weight = -1;
	}
	
	// constructor used when cube is created
	BoxWeight(double len, double m) 
	{
		super(len);
		weight = m;
	}
}

class DemoSuper
{
     public static void main(String args[])
     {
	BoxWeight mybox1 = new BoxWeight(10, 20, 15, 34.3);
	BoxWeight mybox2 = new BoxWeight(2, 3, 4, 0.076);
	BoxWeight mybox3 = new BoxWeight(); // default
	BoxWeight mycube = new BoxWeight(3,2);
	BoxWeight myclone = new BoxWeight(mybox1);
	double vol;
		
	vol = mybox1.volume();
	System.out.println("Volume of mybox1 is " + vol);
	System.out.println("Weight of mybox1 is " + mybox1.weight);
	System.out.println();
	
	vol = mybox2.volume();
	System.out.println("Volume of mybox2 is " + vol);Š	System.out.println("Weight of mybox2 is " + mybox2.weight);
	System.out.println();
		
	vol = mybox3.volume();
	System.out.println("Volume of mybox3 is " + vol);
	System.out.println("Weight of mybox3 is " + mybox3.weight);
	System.out.println();
	
	vol = myclone.volume();
	System.out.println("Volume of myclone is " + vol);
	System.out.println("Weight of myclone is " + myclone.weight);
	System.out.println();
		
	vol = mycube.volume();
	System.out.println("Volume of mycube is " + vol);
	System.out.println("Weight of mycube is " + mycube.weight);
	System.out.println();
     }
}

[3İ Listinç oæ 'DemoShipment.java'

// Extend BoxWeight to include shipping costs.
// start with box.
class Box
{
	private double width;
	private double height;
	private double depth;
	
	// construct clone of an object
	Box(Box ob)
	{
		//pass object to constructor
		width=ob.width;
		height=ob.height;
		depth=ob.depth;
	}
	
	// constructor used when all dimensions specified
	Box(double w, double h, double d)
	{
		width=w;
		height=h;
		depth=d;
	}
	
	//constructor used when no dimensions specified
	Box()
	{
		width = -1;		
		height = -1;
		depth = -1;
	}
Š	// constructor used when cube is created
	Box (double len)
	{
		width = height = depth = len;
	}

	// compute and return volume
	double volume() 
	{
		return width * height * depth;
	}
}

// add weight.
class BoxWeight extends Box  
{
	double weight;
	
	// construct clone of an object
	BoxWeight (BoxWeight ob) 
	{
		// pass object to constructor
		super(ob);
		weight = ob.weight;
	}

	// constructor when all parameters are specified
	BoxWeight (double w, double h, double d, double m) 
	{
		super(w,h,d);
		// call superclass constructor
		weight=m;
	}

	// default constructor
	BoxWeight()
	{
		super();
		weight = -1;
	}
	
	// constructor used when cube is created
	BoxWeight(double len, double m) 
	{
		super(len);
		weight = m;
	}
}
.paŠ//add shipping costs
class Shipment extends BoxWeight
{
	double cost;
	
	// construct clone of an object
	Shipment(Shipment ob)
	{
		//pass object to constructor
		super(ob);
		cost=ob.cost;
	}
	
	// construct when all parameters are specified
	Shipment(double w, double h, double d, double m, double c)
	{
		super(w,h,d,m);
		cost=c;
	}
	
	//default constructor
	Shipment()
	{
		super();
		cost=-1;
	}
	
	// constructor used when cube is created
	Shipment(double len, double m, double c)
	{
		super(len,m);
		cost=c;
	}
}

class DemoShipment
{
  public static void main(String args[])
  {
     Shipment shipment1=new Shipment(10,20,15,10,3.41);
     Shipment shipment2=new Shipment(2,3,4,0.76,1.28);
     double vol;
     vol=shipment1.volume();
     System.out.println("Volume of shipment1 is " + vol);
     System.out.println("Weight of shipment1 is " + shipment1.weight);
     System.out.println("shipping cost: $" + shipment1.cost);
     System.out.println();

     vol=shipment2.volume();
     System.out.println("Volume of shipment2 is " + vol);
     System.out.println("Weight of shipment2 is " + shipment2.weight);
     System.out.println("shipping cost: $" + shipment2.cost);
     System.out.println();
    }
}Š[4İ Listinç oæ 'Shapes.java'

// Polymorphism in Java

class Shape { 
  void draw() {}
  void erase() {} 
}

class Circle extends Shape {
  void draw() { 
    System.out.println("Circle.draw()"); 
  }
  void erase() { 
    System.out.println("Circle.erase()"); 
  }
}

class Square extends Shape {
  void draw() { 
    System.out.println("Square.draw()"); 
  }
  void erase() { 
    System.out.println("Square.erase()"); 
  }
}

class Triangle extends Shape {
  void draw() { 
    System.out.println("Triangle.draw()"); 
  }
  void erase() { 
    System.out.println("Triangle.erase()");
  }
}

public class Shapes {
  public static Shape randShape() {
    switch((int)(Math.random() * 3)) {
      default: // To quiet the compiler
      case 0: return new Circle();
      case 1: return new Square();
      case 2: return new Triangle();
    }
  }
  public static void main(String[] args) {
    Shape[] s = new Shape[9];
    // Fill up the array with shapes:
    for(int i = 0; i < s.length; i++)
      s[i] = randShape();
    // Make polymorphic method calls:
    for(int i = 0; i < s.length; i++)
      s[i].draw();
  }
}Š[5İ Listinç oæ 'Music.java'

// An extensible program
import java.util.*;

class Instrument3 {
  public void play() {
    System.out.println("Instrument3.play()");
  }
  public String what() {
    return "Instrument3";
  }
  public void adjust() {}
}

class Wind3 extends Instrument3 {
  public void play() {
    System.out.println("Wind3.play()");
  }
  public String what() { return "Wind3"; }
  public void adjust() {}
}

class Percussion3 extends Instrument3 {
  public void play() {
    System.out.println("Percussion3.play()");
  }
  public String what() { return "Percussion3"; }
  public void adjust() {}
}

class Stringed3 extends Instrument3 {
  public void play() {
    System.out.println("Stringed3.play()");
  }
  public String what() { return "Stringed3"; }
  public void adjust() {}
}

class Brass3 extends Wind3 {
  public void play() {
    System.out.println("Brass3.play()");
  }
  public void adjust() {
    System.out.println("Brass3.adjust()");
  }
}

class Woodwind3 extends Wind3 {
  public void play() {
    System.out.println("Woodwind3.play()");
  }
  public String what() { return "Woodwind3"; }
}
Špublic class Music3 {
  // Doesn't care about type, so new types
  // added to the system still work right:
  static void tune(Instrument3 i) {
    // ...
    i.play();
  }
  static void tuneAll(Instrument3[] e) {
    for(int i = 0; i < e.length; i++)
      tune(e[i]);
  }
  public static void main(String[] args) {
    Instrument3[] orchestra = new Instrument3[5];
    int i = 0;
    // Upcasting during addition to the array:
    orchestra[i++] = new Wind3();
    orchestra[i++] = new Percussion3();
    orchestra[i++] = new Stringed3();
    orchestra[i++] = new Brass3();
    orchestra[i++] = new Woodwind3();
    tuneAll(orchestra);
  }
} 