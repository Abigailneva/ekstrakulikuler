import 'package:flutter/material.dart';
import 'package:my_app/screens/dashboard.dart';
import 'package:my_app/screens/halaman_pendaftaran.dart';

class FromPendaftaran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe6e6e6),
      appBar: AppBar(
        elevation: 4,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff2991c6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: Text(
          "EKSTRAKULIKULER BN",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: Color(0xffffffff),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xffffffff), size: 24),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PendaftaranEskulPage()),
            );
          },
        ),
      ),
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 50, 20, 60),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xff2a91c6),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(color: Color(0x4d9e9e9e), width: 1),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Form Pendaftaran",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildTextField(
                      hintText: "Masukkan nama", context: context),
                  SizedBox(height: 20),
                  _buildTextField(
                      hintText: "Masukkan kelas", context: context),
                  SizedBox(height: 20),
                  _buildTextField(
                      hintText: "Masukkan ekstrakurikuler yang dipilih",
                      context: context),
                  SizedBox(height: 20),
                  Text(
                    "Saya dengan kesadaran diri penuh, memilih untuk mengikuti kegiatan ekstrakurikuler ini selama 1 semester ke depan.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: MaterialButton(
                      onPressed: () {
                        _showSuccessDialog(context);
                      },
                      color: Color(0xff000000),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text(
                        "Kirim",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membuat TextField dengan styling yang konsisten
  Widget _buildTextField({required String hintText, required BuildContext context}) {
    return TextField(
      obscureText: false,
      maxLines: 1,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: Color(0xff000000),
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff000000), width: 1),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff000000), width: 1),
          borderRadius: BorderRadius.circular(8.0),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 12,
          color: Color(0xa6000000),
        ),
        filled: true,
        fillColor: Color(0xffffffff),
        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      ),
    );
  }

  // Fungsi untuk menampilkan dialog sukses setelah pendaftaran
  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Pendaftaran Berhasil"),
          content: Text("Anda sudah mendaftar ekstrakurikuler!"),
          actions: [
            TextButton(
              child: Text("Oke"),
              onPressed: () {
                Navigator.of(context).pop(); // Menutup dialog
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardUser()),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
