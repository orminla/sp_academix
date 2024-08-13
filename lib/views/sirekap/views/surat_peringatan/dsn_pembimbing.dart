
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// // import 'package:intl/intl.dart';

// class AplikasiSaya extends StatefulWidget {
//   final List<Mahasiswa> mahasiswaList;

//   AplikasiSaya({required this.mahasiswaList});

//   @override
//   _AplikasiSayaState createState() => _AplikasiSayaState();
// }

// class _AplikasiSayaState extends State<AplikasiSaya> {
//   int notificationCount = 0;

//   final _nimController = TextEditingController();
//   final _namaController = TextEditingController();
//   final _kelasController = TextEditingController();
//   final _programStudiController = TextEditingController();
//   final _jurusanController = TextEditingController();
//   final _totalKetidakhadiranController = TextEditingController();
//   final _tanggalPertemuanController = TextEditingController();
//   final _deskripsiPembahasanController = TextEditingController();

//   @override
//   void dispose() {
//     _nimController.dispose();
//     _namaController.dispose();
//     _kelasController.dispose();
//     _programStudiController.dispose();
//     _jurusanController.dispose();
//     _totalKetidakhadiranController.dispose();
//     _tanggalPertemuanController.dispose();
//     _deskripsiPembahasanController.dispose();
//     super.dispose();
//   }

//   void showNotification() {
//     setState(() {
//       notificationCount++;
//     });

//     Fluttertoast.showToast(
//       msg: "Notifikasi diterima",
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.BOTTOM,
//     );
//   }

//   void _search() {
//     final String nim = _nimController.text;

//     try {
//       final Mahasiswa mahasiswa = widget.mahasiswaList.firstWhere((m) => m.nim == nim);

//       setState(() {
//         _namaController.text = mahasiswa.nama;
//         _kelasController.text = mahasiswa.kelas;
//         _programStudiController.text = mahasiswa.programStudi;
//         _jurusanController.text = mahasiswa.jurusan;
//         _totalKetidakhadiranController.text = mahasiswa.totalKetidakhadiran.toString();
//         _tanggalPertemuanController.text = DateFormat('EEEE, dd-MM-yyyy').format(mahasiswa.tanggalPertemuan);
//       });
//     } catch (e) {
//       Fluttertoast.showToast(
//         msg: "Data tidak ditemukan",
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Berita Acara Mahasiswa'),
//           actions: [
//             _buildNotificationIcon(),
//             SizedBox(width: 16),
//           ],
//         ),
//         body: SingleChildScrollView(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _buildSearchBar(),
//               SizedBox(height: 16),
//               _buildDetailsSection(),
//               SizedBox(height: 16),
//               _buildPublishButton(),
//               SizedBox(height: 16),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildNotificationIcon() {
//     return Stack(
//       children: [
//         Icon(Icons.notifications, size: 30),
//         if (notificationCount > 0)
//           Positioned(
//             right: 0,
//             top: 0,
//             child: CircleAvatar(
//               radius: 10,
//               backgroundColor: Colors.red,
//               child: Text(
//                 '$notificationCount',
//                 style: TextStyle(color: Colors.white, fontSize: 11),
//               ),
//             ),
//           ),
//       ],
//     );
//   }

//   Widget _buildSearchBar() {
//     return Container(
//       padding: const EdgeInsets.all(12.0),
//       child: Row(
//         children: [
//           Expanded(
//             child: Text(
//               'Berita Acara Mahasiswa',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontFamily: 'Times New Roman'),
//             ),
//           ),
//           SizedBox(width: 16),
//           Container(
//             width: 220,
//             height: 28,
//             decoration: BoxDecoration(
//               color: Color.fromARGB(255, 248, 247, 247),
//               borderRadius: BorderRadius.circular(7.0),
//               border: Border.all(color: Colors.grey),
//             ),
//             child: Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 2.0),
//                   child: Icon(Icons.search, color: Colors.grey),
//                   ),
//                   Expanded(
//                     child: TextField(
//                       controller: _nimController,
//                       decoration: InputDecoration(
//                         border: InputBorder.none,
//                         hintText: 'Cari...',
//                         contentPadding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 12.0),
//                       ),
//                       style: TextStyle(fontSize: 14),
//                       onSubmitted: (_) => _search(),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//    );
//   }

//   Widget _buildDetailsSection() {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Expanded(
//           flex: 2,
//           child: _buildPersonalInfoSection(),
//         ),
//         SizedBox(width: 16),
//         Expanded(
//           flex: 3,
//           child: _buildDescriptionSection(),
//         ),
//       ],
//     );
//   }

//   Widget _buildPersonalInfoSection() {
//     return Container(
//       padding: EdgeInsets.all(19.0),
//       constraints: BoxConstraints(maxWidth: 5, maxHeight: 537),
//       decoration: BoxDecoration(
//         color: Color.fromARGB(255, 205, 203, 203),
//         borderRadius: BorderRadius.circular(14.0),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           _buildTextField(label: 'Nama:', controller: _namaController),
//           SizedBox(height: 2),
//           _buildTextField(label: 'NIM:', controller: _nimController),
//           SizedBox(height: 2),
//           _buildTextField(label: 'Kelas:', controller: _kelasController),
//           SizedBox(height: 2),
//           _buildTextField(label: 'Program Studi:', controller: _programStudiController),
//           SizedBox(height: 2),
//           _buildTextField(label: 'Jurusan:', controller: _jurusanController),
//           SizedBox(height: 2),
//           _buildTextField(
//             label: 'Total Ketidakhadiran:',
//             controller: _totalKetidakhadiranController,
//             keyboardType: TextInputType.number,
//           ),
//           _buildDatePickerField(),
//         ],
//       ),
//     );
//   }

// Widget _buildTextField({
//   required String label,
//   required TextEditingController controller,
//   TextInputType? keyboardType,
// }) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(vertical: 1.0), 
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label, 
//           style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,fontFamily: 'Times New Roman')
//         ),
//           SizedBox(height: 0), 
//     Container(
//       child: new ConstrainedBox(
//         constraints: BoxConstraints(
//           maxHeight: 35,
//         ),
//         child: TextField(
//           controller: controller,
//           style: TextStyle(fontSize: 12, fontFamily: 'calibri',fontWeight: FontWeight.bold),
//           keyboardType: keyboardType,
//           decoration: InputDecoration(
//             border: InputBorder.none,
//             contentPadding: EdgeInsets.only(top: 1, bottom: 1), 
//           ),
//         ),
//       ),
//     ),
//         SizedBox(height: 0.1), 
//         Divider(color: Colors.black, thickness: 0.5),
//       ],
//     ),
//   );
// }


//   Widget _buildDatePickerField() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text('Tanggal Pertemuan:', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Times New Roman')),
//         SizedBox(height: 1),
//         TextField(
//           controller: _tanggalPertemuanController,
//           style: TextStyle(fontSize: 12),
//           decoration: InputDecoration(border: InputBorder.none),
//           readOnly: true,
//           onTap: () async {
//             DateTime? pickedDate = await showDatePicker(
//               context: context,
//               initialDate: DateTime.now(),
//               firstDate: DateTime(2000),
//               lastDate: DateTime(2101),
//             );
//             if (pickedDate != null) {
//               setState(() {
//                 _tanggalPertemuanController.text = DateFormat('EEEE, dd-MM-yyyy').format(pickedDate);
//               });
//             }
//           },
//         ),
//         SizedBox(height: 1),
//       ],
//     );
//   }

//   Widget _buildDescriptionSection() {
//     return Container(
//       padding: EdgeInsets.all(15.0),
//       decoration: BoxDecoration(
//         color: const Color.fromARGB(255, 205, 203, 203),
//         borderRadius: BorderRadius.circular(16.0),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Center(
//             child: Text(
//               'Deskripsi Pembahasan',
//               style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,fontFamily: 'Times New Roman'),
//             ),
//           ),
//           SizedBox(height: 13),
//           Divider(color: Colors.black, thickness: 0.5),
//           TextField(
//             controller: _deskripsiPembahasanController,
//             maxLines: null,
//             decoration: InputDecoration(border: InputBorder.none),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildPublishButton() {
//     return Align(
//       alignment: Alignment.bottomRight,
//       child: ElevatedButton(
//         onPressed: () {
//           showDialog(
//             context: context,
//             builder: (BuildContext context) {
//               return Dialog(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(13.0),
//                 ),
//                 child: Stack(
//                   clipBehavior: Clip.none,
//                   children: <Widget>[
//                     Container(
//                       padding: const EdgeInsets.only(
//                         top: 30.0,
//                         bottom: 20.0,
//                         left: 72.0,
//                         right: 20.0,
//                       ),
                      
//                       constraints: BoxConstraints(
//                         maxWidth: 370.0,
//                         maxHeight: 245.0,
//                       ),
//                       child: Column(
//                         mainAxisSize: MainAxisSize.min,
//                         children: <Widget>[
//                           CircleAvatar(
//                             backgroundColor: Color.fromARGB(255, 25, 186, 214),
//                             radius: 45,
//                             child: Icon(Icons.check, size: 65, color: Colors.white),
//                           ),
//                           SizedBox(height: 10),
//                           Text(
//                             'Publikasi Berhasil',
//                             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13,fontFamily: 'Times New Roman'),
//                           ),
//                           SizedBox(height: 1),
//                           Text(
//                             DateFormat('EEEE, dd-MM-yyyy - HH:mm WIB').format(DateTime.now()),
//                             style: TextStyle(color: Colors.grey, fontSize: 9, fontFamily: 'Times New Roman'),
//                           ),
//                           SizedBox(height: 10),
//                         ],
//                       ),
//                     ),
//                     Positioned(
//                       right: 10,
//                       top: 10,
//                       child: IconButton(
//                         icon: Icon(Icons.close, color: Color.fromARGB(255, 15, 14, 14), size: 18),
//                         onPressed: () {
//                           Navigator.of(context).pop();
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           );
//         },
//         child: Padding(
//           padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
//           child: Text(
//             'Publikasi',
//             style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Times New Roman', color: Colors.white),
//           ),
//         ),
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.green,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(7.0),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void debugFillProperties(DiagnosticPropertiesBuilder properties) {
//     super.debugFillProperties(properties);
//     properties.add(DiagnosticsProperty<TextEditingController>('_jurusanController', _jurusanController));
//   }
// }

// class Mahasiswa {
//   final String nama;
//   final String nim;
//   final String kelas;
//   final String programStudi;
//   final String jurusan;
//   final int totalKetidakhadiran;
//   final DateTime tanggalPertemuan;

//   Mahasiswa({
//     required this.nama,
//     required this.nim,
//     required this.kelas,
//     required this.programStudi,
//     required this.jurusan,
//     required this.totalKetidakhadiran,
//     required this.tanggalPertemuan,
//   });
// }

// void main() {
//   runApp(
//     MaterialApp(
//       home: AplikasiSaya(
//         mahasiswaList: [
//           Mahasiswa(
//             nama: 'John Doe',
//             nim: '123456789',
//             kelas: 'A',
//             programStudi: 'Teknik Informatika',
//             jurusan: 'Informatika',
//             totalKetidakhadiran: 3,
//             tanggalPertemuan: DateTime.now(),
//           ),
//           // Tambahkan data mahasiswa lainnya di sini
//         ],
//       ),
//     ),
//   );
// }