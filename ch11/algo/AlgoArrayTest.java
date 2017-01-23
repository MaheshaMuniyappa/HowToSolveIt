package algo;

public class AlgoArrayTest
{
  public static void main(String args[])
  {
    float x[] = { 1.2f, 3.4f, 5.6f, 0.9f, 7.5f };

    AlgoCalc c1 = new AlgoCalc();
    float avg = c1.average(x);
    System.out.println("AVG = " + avg);
    float dev = c1.deviation(x);
    System.out.println("DEV = " + dev);
  }
  
}

class AlgoCalc
{
  public float average(float a[])
  {
    float sum = 0.0f;
    int i;
    
    for(i = 0; i < a.length; i++) sum = sum + a[i];
    return sum / a.length;
  } 

  public float deviation(float a[])
  {
    int N, i;
    float sum = 0.0f, sum2 = 0.0f, d;

    N = a.length;
    for(i = 0; i < N; i++)
    {
      sum = sum + a[i];
      sum2 = sum2 + a[i]*a[i];
    }
    d = (float) Math.sqrt((sum2 - sum)/(N*(N-1)));
    return d;    

  }
}



