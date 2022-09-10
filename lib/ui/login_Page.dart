import 'package:flutter/material.dart';
import 'package:multiroleapp/ui/admin_page.dart';
import 'package:multiroleapp/ui/student_page.dart';
import 'package:multiroleapp/ui/teacher_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

const List<String> list = <String>['','Student','Teacher','Admin'];


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  String dropdownValue = list.first;
  String newValue = '';
  String message = "Please Select User Type";
  bool checkOption = false;
  String emailMessage ='Enter Your Email';
  String passwordMessage = 'Enter Your Password';
  String ageMessage = 'Enter Your Age';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Align(
            alignment: Alignment.bottomRight,
            child: DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_downward),
            elevation: 16,
            style: const TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                dropdownValue = value!;
                newValue =value;
                checkOption = true;
                message = '';
              });
            },
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            ),
          ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(message,style: TextStyle(color: checkOption? Colors.green:Colors.red),),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                label:const  Text("Email"),
                hintText: "Enter Your Email",
                helperText: emailMessage,
                hintStyle:const  TextStyle(color: Colors.green),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:const BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:const  BorderSide(
                    color: Colors.purple,
                    width: 2,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Your Password",
                labelText: "Password",
                helperText: passwordMessage,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:const BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:const  BorderSide(
                    color: Colors.purple,
                    width: 2,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: ageController,
              decoration: InputDecoration(
                label:const  Text("Age"),
                hintText: "Enter Your Age",
                helperText: ageMessage,
                hintStyle:const  TextStyle(color: Colors.green),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:const BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:const  BorderSide(
                    color: Colors.purple,
                    width: 2,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: InkWell(
                onTap: () async {
                  if(newValue.isEmpty){
                    message = "Please Select Any Option";
                    setState(() {

                    });
                  }
                  else if(newValue == 'Student'){
                    print("This is Student Page");
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const StudentPage(),),);
                    // to use shared preference we have to first import the package from
                    // pub.dev
                    // shared preference need future function to be used
                    // first we have to get the instance of shared preference
                    SharedPreferences sp = await SharedPreferences.getInstance();

                    // after getting the instance then we can use it or make it as public variable to used every where

                    // to add data to shared preference we have to use set function
                    // Example data
                    // pref.setString("name", "Mukaram Khan");

                    //Real Static data Example

                    sp.setString("email", emailController.text.toString());
                    sp.setString("age", ageController.text.toString());
                    sp.setBool("isLogin", true);
                    sp.setString("type", newValue);
                    // to get the data we have to use the get method to get the data

                    // print(pref.get("name"));
                  }
                  else if(newValue == 'Teacher'){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const TeacherPage(),),);
                    // to use shared preference we have to first import the package from
                    // pub.dev
                    // shared preference need future function to be used
                    // first we have to get the instance of shared preference
                    SharedPreferences sp = await SharedPreferences.getInstance();

                    // after getting the instance then we can use it or make it as public variable to used every where

                    // to add data to shared preference we have to use set function
                    // Example data
                    // pref.setString("name", "Mukaram Khan");

                    //Real Static data Example

                    sp.setString("email", emailController.text.toString());
                    sp.setString("age", ageController.text.toString());
                    sp.setBool("isLogin", true);
                    sp.setString("type", newValue);
                    // to get the data we have to use the get method to get the data

                    // print(pref.get("name"));
                  }
                  else if(newValue == 'Admin'){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const AdminPage(),),);
                    // to use shared preference we have to first import the package from
                    // pub.dev
                    // shared preference need future function to be used
                    // first we have to get the instance of shared preference
                    SharedPreferences sp = await SharedPreferences.getInstance();

                    // after getting the instance then we can use it or make it as public variable to used every where

                    // to add data to shared preference we have to use set function
                    // Example data
                    // pref.setString("name", "Mukaram Khan");

                    //Real Static data Example

                    sp.setString("email", emailController.text.toString());
                    sp.setString("age", ageController.text.toString());
                    sp.setBool("isLogin", true);
                    sp.setString("type", newValue);
                    // to get the data we have to use the get method to get the data

                    // print(pref.get("name"));
                  }

                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                  ),
                ),
              ),
              ),
          ],
        ),
      ),
    );
  }
}
