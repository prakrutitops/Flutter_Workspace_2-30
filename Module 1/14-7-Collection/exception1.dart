//try,catch,finally,throw
import 'dart:io';

void main()
{
      int age=14;

      try
      {
        //logic
        if(age>=18)
        {
          print('YES');
        }
        else
        {
          throw new Exception("Not Valid");
        }

      }
      catch(e2)
      {
        print(e2);
      }
      //compulsory execute
      finally
      {
        print('Executed');
      }
}