// Here, Box uses a parameterized constructor to 
//	initialize the dimensions of the box.

class Box
{
	double width;
	double height;
	double depth;
	
	// Constructor with out parameters
	Box(double w, double h, double d)
	{
		width=w;
		height=h;
		depth=d;
	}
	
	// Compute and return volume
	double volume()
	{
		return width*height*depth;
	}
}

class BoxTest2
{
	public static void main(String args[])
	{
		//declare, allocate, and initialize box objects
		Box mybox1=new Box(10,20,15);
		Box mybox2=new Box(3,6,9);
//      Box mybox3 = new Box();    
		double vol;
		vol=mybox1.volume();
		System.out.println("Volume of mybox1 is "+vol);
		
		vol=mybox2.volume();
		System.out.println("Volume of mybox2 is "+vol);
	}
}
