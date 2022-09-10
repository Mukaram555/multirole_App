import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class TypeOfUser extends StatelessWidget {
  final String type;

  const TypeOfUser({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool selected = false;
    return InkWell(
      onTap: () async{
        SharedPreferences sp = await SharedPreferences.getInstance();
        selected = true;
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1,
            ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            type,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
