import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget{
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage>{

  bool _toggleVisibility = true;

Widget _buildEmailTextField(){
  return TextFormField(
    decoration: InputDecoration(
      hintText: "Your email or username",
      hintStyle: TextStyle(color: Color(0xFFBDC2CB), fontSize: 18.0,
      ),
    ),
  );
}

Widget _buildPasswordTextField(){
  return TextFormField(
    decoration: InputDecoration(
      hintText: "Password",
      hintStyle: TextStyle(color: Color(0xFFBDC2CB), fontSize: 18.0,
      ),
      suffixIcon: IconButton(
        icon: _toggleVisibility ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
        onPressed: (){
          setState(() {
            _toggleVisibility = !_toggleVisibility;
          });
        },
        ),
    ),
    obscureText: _toggleVisibility,
  );
}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Sign In", style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 75.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Forgotten Password?", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor,))
              ],
            ),
            SizedBox(height: 10.0),
            Card(
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    _buildEmailTextField(),
                    SizedBox(height: 20.0,),
                    _buildPasswordTextField(),
                  ],
                ),
                ),
            ),
            SizedBox(height: 30.0),
            Container(
              height: 50.0,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Center(
                child: Text("Sign In", style: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
            Divider(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't have an account?", style: TextStyle(color: Color(0xFFBDC2CB), fontSize: 16.0),),
                SizedBox(width: 10.0),
                Text("Sign up", style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold, fontSize: 16.0),),
              ],
            ),
          ]
        ),
        ),
    );
  }
}