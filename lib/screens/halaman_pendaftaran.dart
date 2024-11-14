import 'package:flutter/material.dart';
import 'package:my_app/screens/dashboard.dart';
import 'package:my_app/screens/from_pendaftaran.dart';
import 'package:my_app/screens/from_pindah.dart';
import 'package:my_app/screens/login.dart';
import 'package:my_app/screens/preview.dart';

class PendaftaranEskulPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 4,
        centerTitle: false,
        automaticallyImplyLeading: true,
        backgroundColor: Color(0xff288fc4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12.0),
            bottomRight: Radius.circular(12.0),
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text(
          "EKSTRAKULIKULER BN",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: screenWidth * 0.05, 
            color: Color(0xffffffff),
          ),
        ),
      ),
drawer: Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      DrawerHeader(
        decoration: BoxDecoration(
          color: Color(0xff298ec3),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/logo-bn.png'), 
            ),
            SizedBox(height: 10),
            Text(
              'Selamat datang, User!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Ekstrakulikuler SMK BN',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),

       ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardUser()),
                );
              },
            ),
      ListTile(
        leading: Icon(Icons.preview),
        title: Text('Pengenalan Eskul'),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Preview()));
        },
      ),
      ListTile(
        leading: Icon(Icons.person_add),
        title: Text('Daftar Eskul'),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => PendaftaranEskulPage()));
        },
      ),
      ListTile(
        leading: Icon(Icons.swap_horiz),
        title: Text('Pindah Eskul'),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => FromPindah()));
        },
      ),
     
      ListTile(
        leading: Icon(Icons.logout),
        title: Text('Logout'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Login(userType: 'Siswa')),
          );
        },
      ),
    ],
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
