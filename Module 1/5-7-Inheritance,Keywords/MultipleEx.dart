import 'MultilevelInex.dart';

abstract class Print
{
  // Abstract
  void p();



}
abstract class Show
{
  void s();

}

abstract class Y
{
  void s();

}

abstract class U
{
  void s();

}
class Multiple implements Print,Show,Y,U
{
  @override
  void p() {
    print("printing");
  }

  @override
  void s() {
     print("showing");
  }

}
void main()
{
  var m = Multiple();
  m.p();
  m.s();
}