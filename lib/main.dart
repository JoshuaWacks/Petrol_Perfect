import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = new TextStyle(
      fontSize: 22,
      fontFamily: 'Raleway',
      fontStyle: FontStyle.normal,
      color: Colors.black,
      decorationColor: Colors.black,
    );

    TextField usernameTxtField = new TextField(
      style: textStyle,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelStyle: textStyle,
        labelText: 'Username',
      ),
    );

    TextField passwordTxtField = new TextField(
      style: textStyle,
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelStyle: textStyle,
        labelText: 'Password',
      ),
    );

    Widget dataSection = Container(
      padding: const EdgeInsets.fromLTRB(32, 100, 32, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildDataColumn(Icons.person, usernameTxtField),
          _buildDataColumn(Icons.enhanced_encryption, passwordTxtField)
        ],
      ),
    );

    TextStyle buttonTextStyle = new TextStyle(
      fontSize: 18,
      fontFamily: 'Raleway',
      fontStyle: FontStyle.normal,
    );

    Container loginButton = new Container(
      padding: EdgeInsets.fromLTRB(50, 40, 50, 0),
      child: FloatingActionButton.extended(
        backgroundColor: Colors.black,
        onPressed: () {} ,
        icon: Icon(Icons.login),
        label: Text("Login",style: buttonTextStyle,),
      ),
    );

    Container userButtons= new Container(
      padding: EdgeInsets.fromLTRB(32, 40, 32, 0),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton.extended(
              label : Text('   Forgot\nPassword',style: buttonTextStyle,),
              backgroundColor: Colors.black,
              onPressed: () {}
          ),
          FloatingActionButton.extended(
              label : Text('Sign\n Up',style: buttonTextStyle,),
              backgroundColor: Colors.black,
              onPressed: () {}
          ),

        ],
      )
    );



    return MaterialApp(
      title: 'Petrol Perfect',
      home: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/gradient_background.jpg"),
                  fit: BoxFit.cover)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: ListView(
              children: [titleSection, dataSection, loginButton,userButtons],
            ),
          )),
    );
  }

  Widget titleSection = Container(
    padding: const EdgeInsets.fromLTRB(28, 30, 40, 0),
    child: Row(
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Petrol Perfect',
              style: TextStyle(
                  color: Color.fromARGB(255, 12, 90, 24),
                  fontSize: 47.0,
                  wordSpacing: 2.0,
                  letterSpacing: 3.0,
                  fontFamily: 'Raleway',
                  fontStyle: FontStyle.italic),
            )
          ],
        )),
        Image.asset(
          'images/gas_pump_nozzle.jpeg',
          width: 80,
          height: 80,
        ),
      ],
    ),
  );

  Container _buildDataColumn(IconData icon, TextField textField) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.lightBlue,
            size: 40,
          ),
          Expanded(child: textField)
        ],
      ),
    );
  }


}
