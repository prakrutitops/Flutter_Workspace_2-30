import 'dart:io';

void main()
{

    String email="a@gmail.com";
    String pass="1234";

    print("Enter Your Email");//printf
    String e = stdin.readLineSync();//scanf

    print("Enter Your Password");
    String p = stdin.readLineSync();

    if(e.length==0)
    {
      print('Please Enter Proper Email');
    }
    if(p.length==0)
    {
        print('Please Enter Proper Password');
    }
    else
    {

        if(e.compareTo(email)==0 && p.compareTo(pass)==0)
        {
                print('Logged in succesfully');
        }
        else
        {
            print('Credentials are wrong');
        }


    }




}