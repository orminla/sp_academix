import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                Nim(),
                NamaMahasiswa(),
                Makul(),
                Keterangan(),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Column(
                    children: [
                      Text(
                          'Ukuran file maksimum: 3 mb, Jumlah maksimum file: 1'),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: DottedBorder(
                    
                    child: Text("File"),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding Keterangan() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Keterangan :",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Masukkan NIM",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }

  Padding Makul() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Mata Kuliah :",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Masukkan NIM",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }

  Padding NamaMahasiswa() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Nama Mahasiswa :",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Masukkan NIM",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }

  Padding Nim() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("NIM :",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Masukkan NIM",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
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
