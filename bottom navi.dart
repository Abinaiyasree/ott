import 'package:flutter/material.dart';
import 'package:mxplayer/page1.dart';
import 'home.dart';
class navi extends StatefulWidget {
  const navi({Key? key}) : super(key: key);
  @override
  State<navi> createState() => _naviState();
}

class _naviState extends State<navi> {
  int _index=0;
  final pages=[
    home(),
    Center(child: Text("No Downloads",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
    page1(),

  ];
  void _tab(index)
  {
    setState(() {
      _index=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.download),label: "Download"),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "Add"),
        ],
        currentIndex: _index,
        onTap: _tab,
      ),
    );
  }
}
