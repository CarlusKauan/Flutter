import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:helloworld/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  bool IsDartTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipOval(
                  child: Image.network(
                      'https://avatarfiles.alphacoders.com/846/thumb-1920-84668.png'),
                ),
                accountName: Text('Carlos Kewen'),
                accountEmail: Text('Carloskewen190@gmail.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text('tela de inicio'),
              onTap: () {
                print('home');
              },
            ),
            ListTile(
              leading: Icon(Icons.phone_android),
              title: Text('Phone'),
            ),
            ListTile(
              leading: Icon(Icons.run_circle_outlined),
              title: Text('Logout'),
              subtitle: Text('Finalizar sessão'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          CustomSwitch(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador: $counter', style: TextStyle(fontSize: 30)),
            Container(height: 10),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.IsDartTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
