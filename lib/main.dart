import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen_app/Homepage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Sports Model',
        theme: ThemeData(
          backgroundColor: Colors.white,
        ),
      home: SplashScreen()

    );
  }
}


class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashScreenState();


  }
}

class SplashScreenState extends State<SplashScreen>{


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/logo.gif'),
            fit: BoxFit.cover,
          )
      ),
    );
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 6), onDoneLoading);
  }

  onDoneLoading() async{
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> HomePage()));
  }
}








