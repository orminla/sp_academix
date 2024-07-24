import 'package:academix_polnep/views/login/forgetPassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  bool? checkValue = false;

// bakground pake ini
  Gradient gradient = const LinearGradient(
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
      tileMode: TileMode.clamp);
// bakground pake ini
  Gradient btnGradient = const LinearGradient(
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
      tileMode: TileMode.clamp);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: gradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Form(
            key: _formkey,
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Align(
                      child: Image.asset(
                    "assets/logo.png",
                    scale: 15,
                  )),
                  const Padding(padding: EdgeInsets.all(20)),
                  const Text(
                    "Welcome !",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  const Text(
                    "Login To Your Account",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const Padding(padding: EdgeInsets.all(30)),
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "NIM/NIP",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.white, width: 2.0), borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.white, width: 2.0), borderRadius: BorderRadius.circular(10)),
                      ),
                      validator: (value) {
                        if (value!.contains(RegExp(r'([a-zA-Z])'))) {
                          return "Nim tidak boleh ada huruf";
                        }
                        return null;
                      },
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(15)),
                  SizedBox(
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "PASSWORD",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.white, width: 2.0), borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.white, width: 2.0), borderRadius: BorderRadius.circular(10)),
                        ),
                        validator: (value) {
                          if (!value!.contains(RegExp(r'(^[A-Za-z]+$)'))) {
                            return "password harus ada huruf kapital";
                          }
                          return null;
                        },
                      )),
                  const Padding(padding: EdgeInsets.all(10)),
                  Align(
                    alignment: const Alignment(0.7, 0.7),
                    child: RichText(
                        text: TextSpan(
                            text: "Forget Password",
                            style: const TextStyle(color: Colors.white, fontSize: 15),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return const Forgetpassword();
                                }));
                              })),
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  Container(
                    height: 45,
                    width: 200,
                    decoration: BoxDecoration(gradient: btnGradient, borderRadius: BorderRadius.circular(20), boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.1), spreadRadius: 3, blurRadius: 2, offset: const Offset(0, 3))
                    ]),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, shadowColor: Colors.transparent),
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {}
                      },
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
