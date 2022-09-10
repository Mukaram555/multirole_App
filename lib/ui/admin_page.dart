import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_Page.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin Page"),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.clear();
              },
              child: Center(
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.tealAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                      child: Text(
                    "Log Out",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
