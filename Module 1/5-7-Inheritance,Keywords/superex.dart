class MyColor
{
  var color = "black";
}
class MyColor2 extends MyColor
{
  var color="white";

  display()
  {
    print(color);
    print(super.color);//super keywords will refer parent class variable or value


  }
}

void main()
{
  var m1 = MyColor2();
  m1.display();



}