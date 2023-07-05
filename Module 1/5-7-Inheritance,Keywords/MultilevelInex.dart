class P
{
  p()
  {
    print("P Called");
  }
}
class Q extends P
{
  q()
  {
    print("Q Called");
  }
}
class R extends Q
{
  r()
  {
    print("R Called");
  }
}

void main()
{
   var r1 =  R();

   r1.p();
   r1.q();
   r1.r();


}