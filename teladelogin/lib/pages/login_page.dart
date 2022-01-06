import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(20)),
              Container(
                  width: 150,
                  height: 150,
                  child: Image.asset('assets/images/bg.png')),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Location Charger',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        )),
                    Divider(),
                    Text('plugin app for tinder',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 45,
              ),
              ButtonTheme(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  side: BorderSide(color: Colors.red),
                ),
                height: 60.0,
                child: RaisedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Login with Facebook',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                        )),
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
