int power(int b, int n)
{
    int i, p;
    p = 1;
    for (i = 1; i<= n; ++i)
    p = p*b;
    return p;
}
