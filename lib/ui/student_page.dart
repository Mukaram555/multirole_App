import 'package:flutter/material.dart';
import 'package:multiroleapp/ui/login_Page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StudentPage extends StatefulWidget {
  const StudentPage({Key? key}) : super(key: key);

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Student Page"),
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

    );;
  }
}
