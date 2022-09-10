import 'package:flutter/material.dart';
import 'package:multiroleapp/ui/login_Page.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

Future<void> myFunction() async {
  await Future.delayed(const Duration(seconds: 1));
  print("This is Mu Khan");
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("Multi_Role App"),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.purple,
    ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () async {
                SharedPreferences sp =await SharedPreferences.getInstance();
                sp.clear();
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              },
              child: Center(
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.tealAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:const Center(child: Text("Log Out",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),)),
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
