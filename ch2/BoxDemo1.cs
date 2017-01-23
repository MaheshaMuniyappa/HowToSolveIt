// This program includes a method inside the box class.
using System;
class Box
{
	public double width;
	public double height;
	public double depth;
	
	// display volume of a box
	
	public void volume()
	{
		Console.Write("Volume is ");
		Console.WriteLine(width*height*depth);
	}
}

class BoxDemo1
{
	public static void Main(String[] args)
	{
                Box mybox1=new Box();
		Box mybox2=new Box();
		
		// assign values to mybox1's instance variables
		
		mybox1.width=10;
		mybox1.height=20;
		mybox1.depth=15;
		
		// assign different values to mybox2's instance variables
		
		mybox2.width=3;
		mybox2.height=6;
		mybox2.depth=9;

		// display volume of first box
		
		mybox1.volume();

		// display volume of second box
		
		mybox2.volume();
	}
}

		
			
