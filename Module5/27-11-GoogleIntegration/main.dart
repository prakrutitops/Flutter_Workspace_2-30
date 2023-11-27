import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main()
{
  runApp(MaterialApp(home:MyHomePage()));
}
class MyHomePage extends StatefulWidget
{
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<MyHomePage>
{
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> signin() async {
    try {
      final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      print(googleSignInAccount!.displayName);
      print(googleSignInAccount!.email);


      // Handle the sign-in account details
      // For example, access the user information: googleSignInAccount?.displayName, googleSignInAccount?.email, etc.
    } catch (error) {
      // Handle sign-in errors
      print("Error signing in: $error");
    }
  }


  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

          appBar: AppBar(title: Text("Login With Google"),),
          body: Column(

            children: [

                ElevatedButton(onPressed: ()
                {

                  signin();

                }, child: Text("Sign in with google"))

            ],

          ),
      );
  }



}

