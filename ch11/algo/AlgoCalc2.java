package algo;


public class AlgoCalc2
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



