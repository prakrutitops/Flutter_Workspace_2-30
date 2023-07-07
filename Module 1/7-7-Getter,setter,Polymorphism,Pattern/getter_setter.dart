class Student
{
  String name;
  double _percent;
  double _marks;

  double get percent => _percent;

  set percent(double value)
  {
    _percent = value;
  }
}
void main()
{
  var s1 = Student();

  s1.name="Nikhil";//set
  s1._percent=80.00;

  print(s1.name);//get
  print(s1._percent);//get


}