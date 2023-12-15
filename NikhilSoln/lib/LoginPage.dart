import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module_6/HomePage.dart';
import 'package:module_6/SignUpPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget
{
  @override
  LoginState createState() => LoginState();


}

class LoginState extends State<LoginPage>
{
  final _formkey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  late SharedPreferences logindata;

  late bool newuser;
  var isLoading = false;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  @override

  void initState() {
    super.initState();
    check_if_already_login();
  }

  void check_if_already_login() async
  {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);
    print(newuser);
    if (newuser == false)
    {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
    }
  }


  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: 150,),
              Icon(Icons.chat, color: Colors.indigoAccent, size: 70.0,),

              SizedBox(height: 20,),
              Text("Chatter", style: TextStyle(color: Colors.indigoAccent, fontSize: 20, fontWeight: FontWeight.bold),),

              SizedBox(height: 30,),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(7.0),
                padding: EdgeInsets.all(12.0),

                width: 300,
                height: 48,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: InputBorder.none,

                    icon: Icon(Icons.email, color: Colors.indigoAccent,),
                    hintText: "Email",
                    contentPadding: EdgeInsets.symmetric(vertical: 7),
                  ),

                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {

                  },
                  validator: (value) {
                    email = value!;
                    if (value == null || value.isEmpty)
                    {
                      return 'Please enter Email';
                    }

                    return null;
                  },
                ),
              ),

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(7.0),
                padding: EdgeInsets.all(12.0),

                width: 300,
                height: 48,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: InputBorder.none,

                    icon: Icon(Icons.lock, color: Colors.indigoAccent,),
                    hintText: "Password",
                    contentPadding: EdgeInsets.symmetric(vertical: 7),
                  ),

                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (value) {

                  },
                  validator: (value) {
                    password = value!;
                    if (value == null || value.isEmpty)
                    {
                      return 'Please enter Password';
                    }

                    return null;
                  },
                ),
              ),

             SizedBox(height: 20,),

             SizedBox(
               height: 50,
                width: 220,
                child: ElevatedButton(
                  onPressed: ()
                  {

                    final isValid = _formkey.currentState!.validate();

                    if (!isValid)
                    {
                      return;
                    }
                    else
                    {
                      _formkey.currentState!.save();
                      String emailId = email;
                      String pass = password;
                      if (emailId != '' && pass != '')
                      {
                        print('success');
                        logindata.setBool('login', false);//sharedprefrence name
                        logindata.setString('email', emailId);//username key
                        logindata.setString('pass', pass);
                        Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
                      }


                    }






                    if (_formkey.currentState!.validate()) {
                  setState(() {
                  email = emailController.text;
                  password = passwordController.text;

                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  });
                  }
                  }, child: Text("Login", style: TextStyle(fontSize: 18),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigoAccent,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  ),
                  ),
                ),
              ),
              
              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account yet?", style: TextStyle(fontSize: 15, color: Colors.indigoAccent),),

                  TextButton(
                    onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                    },
                    child: Text("Sign Up", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.indigoAccent),),),
                ],
              ),
              
              SizedBox(height: 70,),

              Text("Made with heart By ChandaniDeveloper")
            ],
          ),
          ),
        ),
      ),
    );
  }

}