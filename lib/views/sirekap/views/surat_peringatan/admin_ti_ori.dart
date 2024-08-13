import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class adminTiPage extends StatefulWidget {
  const adminTiPage({Key? key}) : super(key: key);

  @override
  State<adminTiPage> createState() => _adminTiPageState();
}

class _adminTiPageState extends State<adminTiPage> {
  String? tahunValue = '2022/2023';
  String? kelasValue = 'A';
  String? smtValue = '1';

  final List<String> tahunItems = ['2022/2023', '2023/2024', '2024/2025'];
  final List<String> kelasItems = ['A', 'B', 'C', 'D', 'E'];
  final List<String> smtItems = ['1', '2', '3', '4', '5', '6'];

  @override
  Widget build(BuildContext context) {
  return DefaultTabController(
    length: 2,
    child: Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF158AD4),
                Color(0xFF39EADD),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 60, right: 10, top: 10, bottom: 10),
            child: Row(
              children: [
                SizedBox(
                  width: 150,
                  height: 50,
                  child: Image.asset('asset/sirekap_logo.png'),
                ),
                const Spacer(),
                const Text(
                  'Hi, Siti Sarah',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.notifications, color: Colors.white),
                const SizedBox(width: 10),
                CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Text('Admin', style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              child: Text('Menu'),
            ),
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text('Dashboard'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.analytics),
              title: const Text('Laporan dan analitik'),
              selected: true,
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.payment),
              title: const Text('Kompensasi'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1200) {
            return buildWideLayout();
          } else if (constraints.maxWidth > 800) {
            return buildMediumLayout();
          } else {
            return buildNarrowLayout();
          }
        },
      ),
    ),
  );
}


  // Wide layout for large screens
  Widget buildWideLayout() {
    return ListView(
      children: [
        // Main content
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildSummarySection(),
                  buildTableSection(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  // Medium layout for medium screens
  Widget buildMediumLayout() {
    return ListView(
      children: [
        // Main content
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSummarySection(),
            buildTableSection(),
          ],
        ),
      ],
    );
  }

  // Narrow layout for small screens
  Widget buildNarrowLayout() {
    return ListView(
      children: [
        // Main content
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSummarySection(),
            buildTableSection(),
          ],
        ),
      ],
    );
  }

  // Build the summary section
  Widget buildSummarySection() {
    return Container(
      width: double.infinity,
      height: 150,
      margin: const EdgeInsets.all(50),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 70,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: buildSummaryBox('SP I', '10', const Color(0xFFFFE603)),
          ),
          Expanded(
            child: buildSummaryBox('SP II', '21', const Color(0xFFF77700)),
          ),
          Expanded(
            child: buildSummaryBox('SP III', '5', const Color(0xFFF70000)),
          ),
          Expanded(
            child: buildSummaryBox('DO', '0', const Color(0xFF575757)),
          ),
        ],
      ),
    );
  }

// Build a box for the summary section
  Widget buildSummaryBox(String label, String value, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      color: Colors.transparent,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              height: 85,
              color: color,
              child: Center(
                child: Text(
                  label,
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              height: 85,
              color: const Color(0xFFD9D9D9),
              child: Center(
                child: Text(
                  value,
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


  // Build the table section
  Widget buildTableSection() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(50, 0, 50, 50),
      padding: const EdgeInsets.fromLTRB(35, 50, 35, 50),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 70,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              // Adjust dropdowns and search box to be flexible in width
              Expanded(
                child: buildDropdown('Tahun', tahunValue, tahunItems,
                    (String? newValue) {
                  setState(() {
                    tahunValue = newValue!;
                  });
                }),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: buildDropdown('Kelas', kelasValue, kelasItems,
                    (String? newValue) {
                  setState(() {
                    kelasValue = newValue!;
                  });
                }),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: buildDropdown('Semester', smtValue, smtItems,
                    (String? newValue) {
                  setState(() {
                    smtValue = newValue!;
                  });
                }),
              ),
              const SizedBox(width: 60),
              Expanded(
                flex: 2,
                child: buildSearchBox(),
              ),
            ],
          ),
          const SizedBox(height: 40),
          buildDataTabel(),
        ],
      ),
    );
  }

  // Build a dropdown widget
  Widget buildDropdown(String label, String? value, List<String> items,
      ValueChanged<String?> onChanged) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        //const SizedBox(width: 10), // Space between label and dropdown
        Flexible(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF5F5F5),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: value,
                items: items
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: GoogleFonts.poppins(fontSize: 14),
                          ),
                        ))
                    .toList(),
                onChanged: onChanged,
                isExpanded: true, // Ensure the dropdown takes up the full width
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Build a search box widget
  Widget buildSearchBox() {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: 'Search',
        filled: true,
        fillColor: const Color(0xFFF5F5F5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
      style: GoogleFonts.poppins(fontSize: 16),
    );
  }

  // Build the data table
  Widget buildDataTabel() {
    // Gaya teks untuk semua DataColumn
    TextStyle columnTextStyle = GoogleFonts.poppins(
      fontSize: 14,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );

    // Fungsi untuk membungkus Text dengan gaya
    DataColumn _buildDataColumn(String label) {
      return DataColumn(
        label: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 100, // Atur batas maksimum lebar kolom sesuai kebutuhan
          ),
          child: Text(
            label,
            style: columnTextStyle,
            softWrap: true,
            overflow: TextOverflow.visible, // Tambahkan elipsis untuk teks yang meluap
          ),
        ),
      );
    }

    return Container(
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: <DataColumn>[
              _buildDataColumn('NO'),
              _buildDataColumn('NAMA MAHASISWA'),
              _buildDataColumn('NIM'),
              _buildDataColumn('SMT/KELAS'),
              _buildDataColumn('KETIDAKHADIRAN'),
              _buildDataColumn('SURAT PERINGATAN'),
              _buildDataColumn('DETAIL SURAT'),
              _buildDataColumn('STATUS VERIFIKASI'),
            ],
            rows: <DataRow>[
              DataRow(
                cells: <DataCell>[
                  _buildDataCell('1'),
                  _buildDataCell('Siti Sabrina Oktavia'),
                  _buildDataCell('3202216002'),
                  _buildDataCell('4/C'),
                  _buildDataCell('16'),
                  _buildDataCell('SP 1'),
                  _buildDataCell('Edit'),
                  _buildDataCell('Pengajuan'),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  _buildDataCell('2'),
                  _buildDataCell('Rizwanda'),
                  _buildDataCell('3202216001'),
                  _buildDataCell('C'),
                  _buildDataCell('4'),
                  _buildDataCell('22'),
                  _buildDataCell('2023-2024'),
                  _buildDataCell('40'),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  _buildDataCell('3'),
                  _buildDataCell('Yajid'),
                  _buildDataCell('3202216004'),
                  _buildDataCell('C'),
                  _buildDataCell('4'),
                  _buildDataCell('22'),
                  _buildDataCell('2023-2024'),
                  _buildDataCell('40'),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  _buildDataCell('4'),
                  _buildDataCell('Haykal'),
                  _buildDataCell('3202216006'),
                  _buildDataCell('C'),
                  _buildDataCell('4'),
                  _buildDataCell('22'),
                  _buildDataCell('2023-2024'),
                  _buildDataCell('40'),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  _buildDataCell('5'),
                  _buildDataCell('Lalu Nicholas'),
                  _buildDataCell('3202216007'),
                  _buildDataCell('C'),
                  _buildDataCell('4'),
                  _buildDataCell('22'),
                  _buildDataCell('2023-2024'),
                  _buildDataCell('40'),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  _buildDataCell('6'),
                  _buildDataCell('Dora Explorer'),
                  _buildDataCell('3202216007'),
                  _buildDataCell('C'),
                  _buildDataCell('4'),
                  _buildDataCell('22'),
                  _buildDataCell('2023-2024'),
                  _buildDataCell('40'),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  _buildDataCell('7'),
                  _buildDataCell('Amdil Hakim'),
                  _buildDataCell('3202216007'),
                  _buildDataCell('C'),
                  _buildDataCell('4'),
                  _buildDataCell('22'),
                  _buildDataCell('2023-2024'),
                  _buildDataCell('40'),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  _buildDataCell('8'),
                  _buildDataCell('Ismalin Bin Mail'),
                  _buildDataCell('3202216007'),
                  _buildDataCell('C'),
                  _buildDataCell('4'),
                  _buildDataCell('22'),
                  _buildDataCell('2023-2024'),
                  _buildDataCell('40'),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  _buildDataCell('9'),
                  _buildDataCell('Marsya'),
                  _buildDataCell('3202216007'),
                  _buildDataCell('C'),
                  _buildDataCell('4'),
                  _buildDataCell('22'),
                  _buildDataCell('2023-2024'),
                  _buildDataCell('40'),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  _buildDataCell('10'),
                  _buildDataCell('Hanif Fahruddin'),
                  _buildDataCell('3202216007'),
                  _buildDataCell('C'),
                  _buildDataCell('4'),
                  _buildDataCell('22'),
                  _buildDataCell('2023-2024'),
                  _buildDataCell('40'),
                ],
              ),
            ],
          ),
        ));
  }

  DataCell _buildDataCell(String text) {
    return DataCell(
      Container(
        constraints: BoxConstraints(maxWidth: 200),
        child: Align(
          alignment: Alignment.centerLeft, // Align text to the left
          child: Text(
            text,
            softWrap: true, // Enable wrapping
            overflow: TextOverflow.visible, // Ensure text is visible
          ),
        ),
      ),
    );
  }
}