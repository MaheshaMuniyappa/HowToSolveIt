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
	public void Describe()
	{
		System.out.println("My Name is " + name + " My Weight is " + weight);
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
	public void Describe()
	{
		super.Describe();
		System.out.println("My Food = " + food);
	}
	public void Bark()
	{
		System.out.println("I am Barking ...");
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
	public void Describe()
	{
		super.Describe();
		System.out.println("My Food = " + food);
	}
	public void Meu()
	{
		System.out.println("I am Meuing ...");
	}
}

public class AnimalTest
{
  public static void main(String[] args)
  {
	Animal a;
	Dog d = new Dog("Tommy", 150.0f);
	Cat c = new Cat("Johny", 30.0f);

	a = d;
	a.Describe();
	a = c;
	a.Describe();
  }
}




