//named constructor
import 'dart:math';

detail({String name,String surname,String email,String password,String confirmpass})
{

print("Your Name is $name");
print("Your Surname is $surname");
print("Your email is $email");
print("Your password is $password");
print("Your confirm password is $confirmpass");

}

void main()
{
  detail(email:"nikhil",name:"xyz",surname:"nikhil@gmail.com",password:"1234",confirmpass:"1234");
/*  detail("harshil","xyz","harshil@gmail.com",password:"1234",confirmpass:"1234");
  detail("dharmik","xyz","dharmik@gmail.com",confirmpass: "1234",password: "1234");*/



}