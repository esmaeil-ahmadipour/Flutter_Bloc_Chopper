import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

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
                'LOGIN',
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
                    "SIGNIN",
                    style: TextStyle(),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Dont Have An Account.",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                Text(
                  "SIGNUP",
                  style: TextStyle(
                      fontSize: 15.0, color: Theme.of(context).primaryColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
