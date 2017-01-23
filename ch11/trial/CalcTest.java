
package trial;

class Calc
{
  public int add(int a, int b)
  {
    return a+b;
  }
  public int multiply(int a, int b)
  {
    return a*b;
  }
}

public class CalcTest
{
  public static void main(String[] args)
  {
    Calc c = new Calc();
    int ans = c.add(2,3);
    System.out.println("ANS = " + ans);
    ans = c.multiply(2,3);
    System.out.println("ANS = " + ans);
  }
}