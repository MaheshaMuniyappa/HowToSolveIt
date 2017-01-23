public class ShapeTest
{
  public static void main(String[] args)
  {
    Shape sh;
    Circle c = new Circle();
    Square sq = new Square();

    // interface polymorphism
    sh = c;
    sh.draw();
    sh.erase();
    sh = sq;
    sh.draw();
    sh.erase();
  }
}

abstract class Surface implements Shape
{
  public void draw()
  {
    System.out.println("Drawing a Surface...");
  }
}

abstract class Polygon
{
  abstract void fill();
}

interface Shape
{
  void draw();
  void erase();
}

class Circle implements Shape
{
  public void draw()
  {
    System.out.println("Drawing a circle ...");
  }
  public void erase()
  {
    System.out.println("Erasing a circle ...");
  }
}

class Square implements Shape
{
  public void draw()
  {
    System.out.println("Drawing a square ...");
  }
  public void erase()
  {
    System.out.println("Erasing a square ...");
  }
}