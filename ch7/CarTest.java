import java.io.*;

class Car
{
  int speed;
  float weight;

  public Car()
  {
    speed = 0;
    weight = 100.0f;
  }
  public Car(int speed, float weight)
  {
    this.speed = speed;
    this.weight = weight;
  }
  public void accelerate(int v)
  {
    speed = speed + v;
  }
  public void stop()
  {
    speed = 0;
  }
  public void displayDetails()
  {
    System.out.println("SPEED=" + speed + 
         " WEIGHT=" + weight);
  }
  public void setWeight(float weight)
  {
    this.weight = weight;
  }
}

class CoffeeCar extends Car
{
  float coffee;

  public CoffeeCar()
  {
    super();
    coffee = 1.0f;
  }
  public CoffeeCar(int speed, float weight, float coffee)
  {
    super(speed, weight);
    this.coffee = coffee;
  }
  public void displayDetails()
  {
    super.displayDetails();
    System.out.println("COFFEE=" + coffee);
  }
}

class PizzaCar extends Car
{
}

public class CarTest
{
  public static void main(String[] args) throws IOException
  {
    Car c1 = new Car();
    c1.accelerate(50);
    c1.displayDetails();
 
    CoffeeCar cfc1 = new CoffeeCar(30, 200.0f, 10.0f);
    cfc1.setWeight(250.0f);
    cfc1.displayDetails();

    PizzaCar pzc1 = new PizzaCar();
    pzc1.displayDetails();

    BufferedReader br = new BufferedReader(
         new InputStreamReader(System.in));
    System.out.print("Enter new weight of Coffee Car : ");
    String str = br.readLine();
    cfc1.weight = Float.valueOf(str).floatValue();
    cfc1.displayDetails();    
  }
}
