import 'package:academix_polnep/views/login/login.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

// Jalankan "flutter pub add convex_bottom_bar" sebelum menjalankan aplikasi
// Tambahin Page Disini
// halaman kalian link an disini
// panggil disini - eja
class _NavbarState extends State<Navbar> {
  int _selectedNavbar = 0;
  final _pages = [
    // contoh
    const Login(), // home
    const Text("text"), // presensi
    const Text("text"), // kalender
    const Text("text"), // kelas
    const Text("text"), // laporan
  ];

  void changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

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
          child: _pages.elementAt(_selectedNavbar),
        )),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.white,
          color: const Color(0xFF25B4D8),
          activeColor: const Color(0xFF25B4D8),
          style: TabStyle.react,
          items: const [
            TabItem(icon: Icons.home_outlined, title: "Home"),
            TabItem(icon: Icons.calendar_today, title: "Presensi"),
            TabItem(icon: Icons.assessment, title: "Kalender"),
            TabItem(icon: Icons.assessment, title: "Kelas"),
            TabItem(icon: Icons.assessment, title: "Laporan"),
          ],
          initialActiveIndex: 0,
          onTap: changeSelectedNavBar,
        ),
      ),
    );
  }
}
