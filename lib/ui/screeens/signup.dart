import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chopper - Bloc"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          padding: EdgeInsets.all(8.0),
          children: <Widget>[
            Center(
              child: Text(
                'SignUp',
                style: TextStyle(
                    fontSize: 30.0, color: Theme.of(context).primaryColor),
              ),
            ),
            TextFormField(
              validator: (value) {
                if (!value.contains("@")) {
                  return "INVALID EMAIL ADDRESS.";
                }
                return null;
              },
              controller: emailController,
              decoration: InputDecoration(
                  errorText: "INVALID EMAIL ADDRESS.",
                  hintText: "Enter Email Address.",
                  labelText: "Email Address"),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(bottom: 10.0),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Enter Email Password.",
                  labelText: "Email Password"),
            ),
            Padding(
              padding:
              const EdgeInsetsDirectional.only(top: 16.0, bottom: 16.0),
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {},
                child: Center(
                  child: Text(
                    "SIGNUP",
                    style: TextStyle(),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Alredy Have An Account.",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Text(
                    "SIGNIN",
                    style: TextStyle(
                        fontSize: 15.0, color: Theme.of(context).primaryColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
