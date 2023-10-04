//@dart=2.9
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


void main()
{
  runApp(MaterialApp(home:LoginCheck()));
}


class LoginCheck extends StatefulWidget
{
  @override
  AddState createState() => AddState();

}

class AddState extends State<LoginCheck>
{

  TextEditingController mobile = TextEditingController();
  TextEditingController password = TextEditingController();



  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(title: Text("Student Details"),),
      body: ListView(

          children: [

            TextField(
              controller: mobile ,
              decoration: InputDecoration(hintText: "Enter Your Mobile",labelText: "Enter Your Name"),
            ),
            TextField(
              controller: password,
              decoration: InputDecoration(hintText: "Enter Your Password",labelText: "Enter Your Surname"),
            ),


            ElevatedButton(onPressed: () async
            {

                  var url = Uri.parse("https://vyasprakruti.000webhostapp.com/InventorymanaementSystem/login.php");

                  var response = await http.post(url, body:
                  {
                    "mobile": mobile.text.toString(),
                    "password": password.text.toString(),
                  });
                  var data = json.decode(response.body);
                  if(data==0)
                  {
                    print("fail2");
                  }
                  else
                  {
                    print("success2");

                  }





            }, child: Text("Submit")),
          ]


      ),



    );
  }


}