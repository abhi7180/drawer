import 'package:flutter/material.dart';

class logout extends StatefulWidget {

  @override
  State<logout> createState() => _logoutState();
}

class _logoutState extends State<logout> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("LOGOUT"),
      ),
    );
  }
}
