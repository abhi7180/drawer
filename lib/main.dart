import 'package:drawer/about.dart';
import 'package:drawer/home.dart';
import 'package:drawer/logout.dart';
import 'package:drawer/share.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: demo(),));
}

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {

  int i=0;
  List l=[home(),about(),share(),logout()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Image.network(""),

                currentAccountPictureSize: Size(30,30),

                decoration: BoxDecoration(
                  color: Colors.deepOrange
                ),
                accountName: Text("abhi"), accountEmail: Text("abhi@gmail.com")),
            ListTile(title: Text("Home"),onTap: () {
              setState(() {
                i=0;

                Navigator.pop(context);
              });

            },),
            ListTile(title: Text("About us"),onTap: () {
              setState(() {
                i=1;

                Navigator.pop(context);
              });
            },),
            ListTile(title: Text("share"),onTap: () {
              setState(() {
                i=2;

                Navigator.pop(context);
              });
            },),
            ListTile(title: Text("logout"),onTap: () {
              setState(() {
                i=3;

                Navigator.pop(context);
              });
            },),

          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Builder(builder: (context) {
        return IconButton(
            color: Colors.white,
            onPressed: () => Scaffold.of(context).openDrawer(), icon: Icon(Icons.home));

      },),),
      body: l[i],
    );
  }
}

