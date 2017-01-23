class Base {
  Base() {System.out.println("Base()"); }
  Base(int i, int j) { }
}

class Test1 extends Base
{
  Test1(int i) {}
  Test1(int i, int j) {
    super(i,j);
   };
}

public class Test
{
  public static void main(String args[])
  {
    Test1 t1 = new Test1(5);
    Test1 t2 = new Test1(5,6);
  }
}

