package algo;

public class Arithmetic
{
  public int add(int a, int b)
  {
    return a+b;
  }
  public static void main(String[] args)
  {
    Arithmetic ar = new Arithmetic();
    int ans = ar.add(7,5);
    System.out.println("ANS = " + ans);
  }
}
