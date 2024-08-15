import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Verifikasi Kehadiran',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: verifikasi(),
    );
  }
}

class verifikasi extends StatefulWidget {
  @override
  State<verifikasi> createState() => _verifikasiState();
}

class _verifikasiState extends State<verifikasi> {
  void _showDetailSurat() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          content: SizedBox(
            width: 600,
            height: 400,
            child: SingleChildScrollView(
              // To make content scrollable if overflow
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Detail Surat Peringatan',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'NIM: 3202210000',
                        style: GoogleFonts.poppins(fontSize: 18),
                      ),
                      Text(
                        'Total Ketidakhadiran: 15 Jam',
                        style: GoogleFonts.poppins(fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Nama: Anggi Nabila Sulistianingsih',
                    style: GoogleFonts.poppins(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Nomor Surat: SP3 / P1.B/3/6/2024',
                    style: GoogleFonts.poppins(fontSize: 18),
                  ),
                  const SizedBox(height: 20),
                  Table(
                    border:
                        TableBorder.all(), // Added border for better visibility
                    children: [
                      TableRow(
                        decoration: BoxDecoration(
                            color: Colors.grey[300]), // Header background
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('SURAT PERINGATAN',
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('SEMESTER/KELAS',
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('TANGGAL PENGAJUAN',
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('SURAT PERNYATAAN',
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('STATUS PERINGATAN',
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('SP1',
                                style: GoogleFonts.poppins(fontSize: 16)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('1A',
                                style: GoogleFonts.poppins(fontSize: 16)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('21/03/2022',
                                style: GoogleFonts.poppins(fontSize: 16)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('-',
                                style: GoogleFonts.poppins(fontSize: 16)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Selesai',
                                style: GoogleFonts.poppins(fontSize: 16)),
                          ),
                        ],
                      ),
                      TableRow(
                        decoration: BoxDecoration(
                            color: Colors.grey[200]), // Alternate row color
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('SP2',
                                style: GoogleFonts.poppins(fontSize: 16)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('3A',
                                style: GoogleFonts.poppins(fontSize: 16)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('10/11/2023',
                                style: GoogleFonts.poppins(fontSize: 16)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('surat_pernyataan.pdf',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Selesai',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.green, // Tambahkan warna di sini
                              ),
                            ),
                          )
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('SP3',
                                style: GoogleFonts.poppins(fontSize: 16)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('4A',
                                style: GoogleFonts.poppins(fontSize: 16)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('06/07/2024',
                                style: GoogleFonts.poppins(fontSize: 16)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('-',
                                style: GoogleFonts.poppins(fontSize: 16)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Proses',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.orange, // Tambahkan warna di sini
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // Function to handle search, placeholder for now
  void _handleSearch(String query) {
    // Implement search logic here
    print('Searching for: $query');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verifikasi Kehadiran'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                StatusCard(color: Colors.yellow, status: 'SP 1', count: 10),
                StatusCard(color: Colors.orange, status: 'SP 2', count: 7),
                StatusCard(color: Colors.red, status: 'SP 3', count: 3),
                StatusCard(color: Colors.grey, status: 'DO', count: 1),
              ],
            ),
            SizedBox(height: 20),
            DropdownRow(onSearch: _handleSearch),
            SizedBox(height: 10),
            Expanded(
                child: DataTableWidget(
                    onViewPressed: _showDetailSurat)), // Pass the function
            SizedBox(height: 10),
            BottomVerificationBar(),
          ],
        ),
      ),
    );
  }
}

class StatusCard extends StatelessWidget {
  final Color color;
  final String status;
  final int count;

  StatusCard({required this.color, required this.status, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            status,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            '$count',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          Text(
            '',
            style: TextStyle(
              fontWeight: FontWeight.bold, // Atur ketebalan font di sini
            ),
          )
        ],
      ),
    );
  }
}

class DropdownRow extends StatefulWidget {
  final Function(String) onSearch;

  DropdownRow({required this.onSearch});

  @override
  _DropdownRowState createState() => _DropdownRowState();
}

class _DropdownRowState extends State<DropdownRow> {
  int selectedYear = 2024;
  String selectedClass = 'C';
  int selectedSemester = 4;
  TextEditingController _searchController = TextEditingController();

  List<int> years = [2024, 2023, 2022];
  List<String> classes = ['A', 'B', 'C', 'D'];
  List<int> semesters = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // To prevent overflow in smaller devices
      scrollDirection: Axis.horizontal,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Tahun',
                  style: GoogleFonts.poppins(fontSize: 16),
                ),
                SizedBox(width: 10),
                Container(
                  width: 100,
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<int>(
                      value: selectedYear,
                      items: years.map((int value) {
                        return DropdownMenuItem<int>(
                          value: value,
                          child: Text(value.toString()),
                        );
                      }).toList(),
                      onChanged: (int? newValue) {
                        setState(() {
                          selectedYear = newValue!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
          Row(
            children: [
              Text(
                'Kelas',
                style: GoogleFonts.poppins(fontSize: 16),
              ),
              SizedBox(width: 10),
              Container(
                width: 100,
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedClass,
                    items: classes.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedClass = newValue!;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 20),
          Row(
            children: [
              Text(
                'Semester',
                style: GoogleFonts.poppins(fontSize: 16),
              ),
              SizedBox(width: 10),
              Container(
                width: 100,
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<int>(
                    value: selectedSemester,
                    items: semesters.map((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: Text(value.toString()),
                      );
                    }).toList(),
                    onChanged: (int? newValue) {
                      setState(() {
                        selectedSemester = newValue!;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 20),
          Container(
            width: 200,
            height: 40,
            child: TextField(
              controller: _searchController,
              onSubmitted: widget.onSearch,
              decoration: InputDecoration(
                hintText: 'Search',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    widget.onSearch(_searchController.text);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DataTableWidget extends StatefulWidget {
  final VoidCallback onViewPressed;

  DataTableWidget({required this.onViewPressed});

  @override
  _DataTableWidgetState createState() => _DataTableWidgetState();
}

class _DataTableWidgetState extends State<DataTableWidget> {
  List<bool> _selected = [false, false, true, true, true];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
        columns: [
          DataColumn(label: Text('NO')),
          DataColumn(label: Text('NAMA MAHASISWA')),
          DataColumn(label: Text('NIM')),
          DataColumn(label: Text('SMT/KELAS')),
          DataColumn(label: Text('KETIDAKHADIRAN')),
          DataColumn(label: Text('SURAT PERINGATAN')),
          DataColumn(label: Text('DETAIL SURAT')),
          DataColumn(label: Text('VERIFIKASI')),
          DataColumn(label: Text('STATUS VERIFIKASI')),
        ],
        rows: List.generate(5, (index) {
          return DataRow(cells: [
            DataCell(Text('${index + 1}')),
            DataCell(Text(_data[index]['nama'])),
            DataCell(Text(_data[index]['nim'])),
            DataCell(Text(_data[index]['smtKelas'])),
            DataCell(Text(_data[index]['ketidakhadiran'].toString())),
            DataCell(Text(_data[index]['suratPeringatan'])),
            DataCell(ElevatedButton(
              onPressed: widget.onViewPressed,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: Text('Lihat', style: TextStyle(color: Colors.white)),
            )),
            DataCell(Checkbox(
                value: _selected[index],
                onChanged: (bool? value) {
                  setState(() {
                    _selected[index] = value!;
                  });
                })),
            DataCell(Text(
              _selected[index] ? 'Sudah diverifikasi' : 'Belum diverifikasi',
              style: TextStyle(
                  color: _selected[index] ? Colors.green : Colors.red),
            )),
          ]);
        }),
      ),
    );
  }

  List<Map<String, dynamic>> _data = [
    {
      'nama': 'Anggi Nabila Sulistiangisih',
      'nim': '32022161086',
      'smtKelas': '4/C',
      'ketidakhadiran': 15,
      'suratPeringatan': 'SP 1',
    },
    {
      'nama': 'Oliver Dillon',
      'nim': '32022160125',
      'smtKelas': '4/C',
      'ketidakhadiran': 39,
      'suratPeringatan': 'SP 3',
    },
    {
      'nama': 'Muhammad Sapri Syaiful',
      'nim': '32022160139',
      'smtKelas': '4/C',
      'ketidakhadiran': 16,
      'suratPeringatan': 'SP 2',
    },
    {
      'nama': 'Rizwanda',
      'nim': '32022162081',
      'smtKelas': '4/C',
      'ketidakhadiran': 35,
      'suratPeringatan': 'SP 3',
    },
    {
      'nama': 'Siti Sabrina Oktavia',
      'nim': '32022168139',
      'smtKelas': '4/C',
      'ketidakhadiran': 18,
      'suratPeringatan': 'SP 2',
    },
  ];
}

class BottomVerificationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Placeholder counts, in real scenario, these should be dynamic
    int belumTerverifikasi = 2;
    int sudahTerverifikasi = 3;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'BELUM TERVERIFIKASI: $belumTerverifikasi    SUDAH TERVERIFIKASI: $sudahTerverifikasi',
          style: TextStyle(color: Colors.green),
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                // Implement verification logic
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: Text('Verifikasi Semua',
                  style: TextStyle(color: Colors.white)),
            ),
            SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {
                // Implement publish logic
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
              child: Text('Publikasi', style: TextStyle(color: Colors.white)),
            ),
          ],
        )
      ],
    );
  }
}
