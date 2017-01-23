import trial.*;

class Test
{
  public static void main(String[] args)
  {
    Calc c = new Calc();
    int ans = c.add(4,5);
    System.out.println("ANS = " + ans);
    ans = c.multiply(4,5);
    System.out.println("ANS = " + ans);
  }
}