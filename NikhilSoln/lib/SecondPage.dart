import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module_6/LoginPage.dart';

import 'SignUpPage.dart';

class SecondPage extends StatefulWidget
{
  @override
  SecondPageState createState() => SecondPageState();


}

class SecondPageState extends State<SecondPage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              SizedBox(height: 150,),
              Icon(Icons.chat, color: Colors.indigoAccent, size: 70.0,),

              SizedBox(height: 20,),
              Text("Chatter", style: TextStyle(color: Colors.indigoAccent, fontSize: 20, fontWeight: FontWeight.bold),),

              SizedBox(height: 20,),

              Text("WORLD'S MOST PRIVATE CHATTING APP", style: TextStyle(color: Colors.indigoAccent, fontSize: 12, fontWeight: FontWeight.bold),),

              SizedBox(height: 100,),

              Container(
                height: 50,
                width: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.indigoAccent), // Set the border color here
                ),
                child: ElevatedButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 18, color: Colors.indigoAccent),
                  ),
                ),
              ),

              SizedBox(height: 20,),

              SizedBox(
                height: 50,
                width: 220,
                child: ElevatedButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                  }, child: Text("Sign Up", style: TextStyle(fontSize: 18),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigoAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 70,),

              Text("Made with heart By ChandaniDeveloper")
            ],
          ),
        ),
      ),
    );
  }

}