// Here, Box uses a constructor to initialize the
// dimensions of the box.

class Box
{
	double width;
	double height;
	double depth;
	
	// Constructor with out parameters
	Box()
	{
		System.out.println("Constructing Box");
		width=10;
		height=10;
		depth=10;
	}
	
	// Compute and return volume
	double volume()
	{
		return width*height*depth;
	}
}

class BoxTest1
{
	public static void main(String args[])
	{
		//declare, allocate, and initialize box objects
		Box mybox1=new Box();
		Box mybox2=new Box();
		
		double vol;
		vol=mybox1.volume();
		System.out.println("Volume of mybox1 is "+vol);
		
		vol=mybox2.volume();
		System.out.println("Volume of mybox2 is "+vol);
	}
}
