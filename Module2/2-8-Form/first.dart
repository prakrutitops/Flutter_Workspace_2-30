//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget
{
  @override
  FirstState createState() => FirstState();

}



class FirstState extends State<FirstPage>
{

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context)
  {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            TextFormField(

              decoration: const InputDecoration
                (
                icon: const Icon(Icons.person),
                hintText: "Enter Your Firstname",
                labelText: 'Firstname',
              ),
              validator: (value)
              {
                if (value.isEmpty)
                {
                  return 'Please enter firstname';
                }
                return null;
              },




            ),

            TextFormField(

              decoration: const InputDecoration
                (
                icon: const Icon(Icons.person),
                hintText: "Enter Your LastName",
                labelText: 'Lastname',
              ),
              validator: (value)
              {
                if (value.isEmpty)
                {
                  return 'Please enter Lastname';
                }
                return null;
              },




            ),

            TextFormField(

              decoration: const InputDecoration
                (
                icon: const Icon(Icons.password),
                hintText: "Enter Your Password",
                labelText: 'Password',
              ),
              obscureText: true,
              validator: (value)
              {
                if (value.isEmpty)
                {
                  return 'Please enter Password';
                }
                return null;
              },
            ),

            ElevatedButton(onPressed: ()
              {
                  if(_formKey.currentState.validate())
                  {
                          print("Data Processing $firstname");
                  }
              },
                child: Text("Login")
            )
          ],


        ));



  }

}
