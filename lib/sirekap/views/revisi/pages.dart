import 'package:flutter/material.dart';

class PagesFormRevisi extends StatefulWidget {
  const PagesFormRevisi({super.key});

  @override
  State<PagesFormRevisi> createState() => _PagesFormRevisiState();
}

class _PagesFormRevisiState extends State<PagesFormRevisi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        scrollDirection: Axis.vertical,
        clipBehavior: Clip.hardEdge,
        children: [
          header(),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(30),
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "NIM :",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextField(),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container header() {
    return Container(
      padding: EdgeInsets.all(10),
      child: const Center(
        child: Text(
          "Revisi Presensi",
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
