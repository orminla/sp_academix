import 'package:flutter/material.dart';

class RevisiPages extends StatefulWidget {
  const RevisiPages({super.key});

  @override
  State<RevisiPages> createState() => _RevisiPagesState();
}

class _RevisiPagesState extends State<RevisiPages> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff158AD4),
            Color(0xFF39EADD),
          ],
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            
          ),
          body: Center(
            child: Text("Revisi"),
          ),
        ));
  }
}
