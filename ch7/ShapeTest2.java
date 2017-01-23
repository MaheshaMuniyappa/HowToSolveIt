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
public class ShapeTest2
{
  public static void main(String[] args)
  {
    Circle c1 = new Circle();
    Triangle t1 = new Triangle();

    drawPicture(c1); 
    drawPicture(t1);
  }
  public static void drawPicture(Shape sh)
  {
    sh.draw();
    sh.erase();
  }
}

