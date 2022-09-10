import 'dart:async';

import 'package:flutter/material.dart';
import 'package:multiroleapp/ui/home_Page.dart';
import 'package:multiroleapp/ui/login_Page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLogin();

  }

  void isLogin() async {
    SharedPreferences sp =await SharedPreferences.getInstance();
    bool isLogin;
    isLogin = sp.getBool("isLogin") ?? false;
    if(isLogin){
      print(isLogin);
      Timer(const Duration(seconds: 2),(){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
      });
    }
    else{
      print(isLogin);
      Timer(const Duration(seconds: 2),(){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        height: double.infinity,
        child:const  Image(
          fit: BoxFit.contain,
          image: AssetImage('assets/images/logo.png'),
        ),
      ),
    );
  }
}
