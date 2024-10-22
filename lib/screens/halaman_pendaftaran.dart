import 'package:flutter/material.dart';
import 'package:my_app/screens/dashboard.dart';
import 'package:my_app/screens/from_pendaftaran.dart';

class PendaftaranEskulPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 4,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff298ec3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12.0),
            bottomRight: Radius.circular(12.0),
          ),
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
              MaterialPageRoute(builder: (context) => DashboardUser()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Selamat datang di Pendaftaran Ekstrakurikuler",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 10),          
            Text(
              "Di sini Anda dapat mendaftar untuk berbagai ekstrakurikuler yang tersedia. Pilih salah satu yang sesuai dengan minat Anda dan isi formulir pendaftaran.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 40),
            Text(
              "Ekstrakurikuler yang tersedia:",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            _buildEkstrakurikulerItem("1. Basket"),
            _buildEkstrakurikulerItem("2. Voli"),
            _buildEkstrakurikulerItem("3. PMR"),
            _buildEkstrakurikulerItem("4. Paskibra"),
            _buildEkstrakurikulerItem("5. Futsal"),
            _buildEkstrakurikulerItem("6. Paduan Suara"),
            _buildEkstrakurikulerItem("7. Audio Sound"),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 16, bottom: 50),
        child: FloatingActionButton (
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FromPendaftaran()),
          );
        },
        backgroundColor: Color(0xff298ec3),
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
        ),
      ),
    );
  }

  // menampilkan item ekstrakurikuler
  Widget _buildEkstrakurikulerItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
