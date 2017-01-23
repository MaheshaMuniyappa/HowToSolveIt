class Shape
{
  public void draw()
  {
    System.out.println("Basic Shape is drawn...");
  }
  public void erase()
  {
    System.out.println("Erasing Basic Shape...");
  }
}

class Circle extends Shape
{
  public void draw()
  {
    super.draw();
    System.out.println("Drawing a Circle ...");
  }
  public void erase()
  {
    super.erase();
    System.out.println("Erasing a Circle ...");
  }
}

class Triangle extends Shape
{
  public void draw()
  {
    super.draw();
    System.out.println("Drawing a Triangle ...");
  }
  public void erase()
  {
    super.erase();
    System.out.println("Erasing a Triangle ...");
  }
}
public class ShapeTest
{
  public static void main(String[] args)
  {
    Shape sh;
    Circle c1 = new Circle();
    Triangle t1 = new Triangle();

    sh = c1;
    sh.draw();
    sh.erase();
    sh = t1;
    sh.draw();
    sh.erase();
  }
}

