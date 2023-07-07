class MyBank
{
  roi()
  {
    return 0;
  }

}
class Sbi extends MyBank
{
  roi()
  {
    return 7;
  }
}
class Icici extends MyBank
{
  roi()
  {
    return 8;
  }
}
class Axis extends MyBank
{
  roi()
  {
    return 9;
  }
}
void main()
{
  var b = MyBank();//refrence variable

  b = Sbi();//overriding
  print(b.roi());

  b = Icici();//overriding
  print(b.roi());

  b = Axis();//overriding
  print(b.roi());



}