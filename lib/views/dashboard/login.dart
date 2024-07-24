import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF158AD4),
                Color(0xFF39EADD)
              ],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(0.0, 1.0),
              stops: [
                0.0,
                1.0
              ],
              tileMode: TileMode.clamp)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Form(
            child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              const Positioned(
                left: 15,
                right: 20,
                child: Text(
                  "NIM atau NIP",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "NIM/NIP",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.white, width: 2.0), borderRadius: BorderRadius.circular(10)),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
