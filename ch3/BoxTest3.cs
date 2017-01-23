// Here, Box defines three constructors to 
//	initialize the dimensions of the box various ways.
using System;

class Box
{
	double width;
	double height;
	double depth;
	
	// Constructor with all dimensions.
	public Box(double w, double h, double d)
	{
		width=w;
		height=h;
		depth=d;
	}
	
	// Constructor with no dimensions.
	public Box()
	{
		width=0;
		height=0;
		depth=0;
	}
	
	// Constructor used when cube is created
	public Box(double len)
	{
		width=height=depth=len;
	}
	
	// Compute and return volume
	public double volume()
	{
		return width*height*depth;
	}
}

class BoxTest3
{
	public static void Main(String[] args)
	{
		//declare, allocate, and initialize box objects
		Box mybox1=new Box(10,20,15);
		Box mybox2=new Box();
		Box mycube=new Box(7);
		
		double vol;
		
		vol=mybox1.volume();
		Console.WriteLine("Volume of mybox1 is "+vol);
		
		vol=mybox2.volume();
		Console.WriteLine("Volume of mybox2 is "+vol);
		
		vol=mycube.volume();
		Console.WriteLine("Volume of mycube is "+vol);
	}
}