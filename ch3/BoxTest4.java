// Here, Box defines three constructors to 
//	initialize the dimensions of the box various ways.

class Box
{
	double width;
	double height;
	double depth;
	
	// Constructor with all dimensions.
	Box(double w, double h, double d)
	{
                System.out.println("DOUBLE Constructor");
		width=w;
		height=h;
		depth=d;
	}
	
        Box(int w, int h, int d)
	{
                System.out.println("INT Constructor");
		width=w;
		height=h;
		depth=d;
	}

	// Constructor with no dimensions.
	Box()
	{
		width=0;
		height=0;
		depth=0;
	}
	
	// Constructor used when cube is created
	Box(double len)
	{
		width=height=depth=len;
	}
	
	// Compute and return volume
	double volume()
	{
		return width*height*depth;
	}
}

class BoxTest4
{
	public static void main(String args[])
	{
		//declare, allocate, and initialize box objects
		Box mybox1=new Box(10,20,15);
                Box mybox0=new Box(10.1,20.1,15.1);
		Box mybox2=new Box();
		Box mycube=new Box(7);
		
		double vol;
		
		vol=mybox1.volume();
		System.out.println("Volume of mybox1 is "+vol);
		
		vol=mybox2.volume();
		System.out.println("Volume of mybox2 is "+vol);
		
		vol=mycube.volume();
		System.out.println("Volume of mycube is "+vol);
	}
}
