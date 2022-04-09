import 'package:flutter/material.dart';
import 'package:tasklogin/second_page.dart';


class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.blue,
    side: BorderSide(width: 1),
    //elevation: 2,
    //primary: Colors.lightGreenAccent,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.all(12),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(24)),
    ),
  );


  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: ClipRRect(
        borderRadius:BorderRadius.circular(150),

        child: Image.asset('assets/images/logotask.jpg',width:200,height: 200,fit: BoxFit.fill,),
      ),
    );
    final logotext= Text('Sample',style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.center,);
    final logotext2= Text('One',style: TextStyle(fontSize: 30,color: Colors.redAccent,fontWeight: FontWeight.bold),textAlign: TextAlign.center,);
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      //initialValue: 'sampleemail@gmail.com',
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),borderSide: BorderSide(color: Colors.blueAccent),
        ),
      ),
    );

    final password = TextField(
      // style: TextStyle(color: Colors.white),
      autofocus: false,
      //initialValue: 'samplepassword',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),borderSide: BorderSide(color: Colors.blueAccent),
        ),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: ElevatedButton(
        style: raisedButtonStyle,

        onPressed: () {
          Navigator.of(context).pushNamed(SecondPage.tag);
        },
        child: Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 30.0),
            logotext,
            logotext2,
            SizedBox(height: 18.0),
            email,
            SizedBox(height: 15.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
          ],
        ),
      ),
    );
  }
}

