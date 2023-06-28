import 'dart:io';

void main()
{

    print('Select Your Number');
    var num = int.parse(stdin.readLineSync());

    switch(num)
    {
      case 1:print('English');
      break;

      case 2:print('Hindi');
      break;

      case 3:print('Guj');
      break;

      default:print('Number is not valid');
      break;
    }


}