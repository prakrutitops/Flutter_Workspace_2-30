import 'dart:io';

class Student
{
    int id;
    String name;

}
void main()
{
    //var objname = classname();
    print("Enter Your Id");
    int id1 = int.parse(stdin.readLineSync());

    print("Enter Your Name");
    String name1 = stdin.readLineSync();

    var s = Student();//object
    s.id=id1;//value assign
    s.name=name1;


    print("${s.id} and ${s.name}");//value call and print



}