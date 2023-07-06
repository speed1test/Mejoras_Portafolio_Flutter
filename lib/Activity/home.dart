import 'dart:convert';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
@override
_HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    print("This is a init state");
  }

  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
    print("Set state called");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("Widget Destroyed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top:100.0, left: 20),
        child: Column(
          children: <Widget>[
            const Padding(
              //Para customizar que lo quiero a la derecha
              // padding: const EdgeInsets.only(right:10),
              //Para customizar la altura
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Column(
                children: <Widget>[
                  Text("Mi Portafolio", style: TextStyle(fontSize: 45)),
                ],
              ),
            ),
            const Row(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("images/avatar.jfif"),
                ),
                SizedBox(width: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('Edwin Menjívar', style: TextStyle(fontSize: 30),),
                    Text('Arquitecto de Software', style: TextStyle(fontSize: 15),)
                  ],
                )
              ],
            ),
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.only(left:30),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Icon(Icons.shopping_bag, size: 40,),
                      SizedBox(width: 25,),
                      Text("Texto 3", style: TextStyle(fontSize: 20))
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.account_balance, size: 40,),
                      SizedBox(width: 25,),
                      Text("Texto 3", style: TextStyle(fontSize: 20))
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.add_a_photo, size: 40,),
                      SizedBox(width: 25,),
                      Text("Texto 3", style: TextStyle(fontSize: 20))
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.account_circle, size: 40,),
                      SizedBox(width: 25,),
                      Text("Texto 3", style: TextStyle(fontSize: 20))
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.add_business_rounded, size: 40,),
                      SizedBox(width: 25,),
                      Text("Texto 3", style: TextStyle(fontSize: 20))
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              //padding: EdgeInsets.symmetric(vertical: 15.0),
              padding: EdgeInsets.all(20.0),
              child: Text("Acerca de mi fsfsdsdssdddddsdsdsfsfsddsdsdsdsdsdsdsdsdsd", style: TextStyle(fontSize: 22),),
              //child: Text("Creado por: Edwin"),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: ElevatedButton(
                child: const Text("Dame clic"),
                onPressed: () {
                  const snackBar = SnackBar(
                    content: Text('Funcionamiento correcto ❤️'),
                    duration: Duration(seconds: 3),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              ),
            ),
            const SizedBox(height: 60,),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("Creado por: Edwin"),
            ),
          ],
        ),
      ),
    );
  }
}

