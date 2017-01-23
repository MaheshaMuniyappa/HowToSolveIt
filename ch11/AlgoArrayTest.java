import algo.*;

public class AlgoArrayTest
{
  public static void main(String args[])
  {
    float x[] = { 1.2f, 3.4f, 5.6f, 0.9f, 7.5f };

    AlgoCalc2 c1 = new AlgoCalc2();
    float avg = c1.average(x);
    System.out.println("AVG = " + avg);
    float dev = c1.deviation(x);
    System.out.println("DEV = " + dev);
  }
  
}

