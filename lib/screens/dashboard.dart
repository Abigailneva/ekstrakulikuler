import 'package:flutter/material.dart';
import 'package:my_app/screens/from_pindah.dart';
import 'package:my_app/screens/halaman_pendaftaran.dart';
import 'package:my_app/screens/login.dart';
import 'package:my_app/screens/notifikasi.dart';
import 'package:my_app/screens/preview.dart';

class DashboardUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  // Text
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
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
             ),
      
            ListTile(
              leading: Icon(Icons.preview),
              title: Text('Pengenalan Eskul'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Preview()),
                );
              },
            ),
            ListTile(
              leading:Icon(Icons.person_add),
              title: Text('Daftar Eskul'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PendaftaranEskulPage()),
                );
              }
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
              MaterialPageRoute(
                builder: (context) => Login(userType: 'Siswa'), 
              ),
              );

              },
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffe6e6e6),
              Color(0xffcfe9f4),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
             
              AppBar(
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
                leading: Builder(
                  builder: (context) {
                    return IconButton(
                      icon: Icon(Icons.menu, color: Color(0xffffffff), size: 24),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    );
                  },
                ),
                actions: [
                  IconButton(
                    icon: Icon(Icons.notifications, color: Color(0xffffffff), size: 24),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Notifikasi()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Selamat datang
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xffafcfe6),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Selamat Bergabung, Username!",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Deskripsi Singkat
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Ekstrakurikuler adalah kegiatan yang dilakukan di luar jam pelajaran formal. "
                  "Kegiatan ini bertujuan untuk meningkatkan keterampilan sosial, "
                  "mengembangkan minat dan bakat, serta memperkuat ikatan antar siswa.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Daftar Ekstrakurikuler
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Text(
                      "Ekstrakurikuler yang Tersedia",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Color(0xff298ec3),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),

              // Ekstrakurikuler List
              Container(
                height: 260,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildExtracurricularCard("Basket", "assets/images/basket.jpg"),
                    _buildExtracurricularCard("Voli", "assets/images/voli.jpg"),
                    _buildExtracurricularCard("PMR", "assets/images/pmr.jpg"),
                    _buildExtracurricularCard("Paduan Suara", "assets/images/padus.jpg"),
                    _buildExtracurricularCard("Paskibra", "assets/images/paskibra.jpg"),
                    _buildExtracurricularCard("Audio Sound", "assets/images/audio-sound.jpg"),
                    _buildExtracurricularCard("Futsal", "assets/images/futsal.jpg"),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExtracurricularCard(String title, String imagePath) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(horizontal: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 200,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(
                imagePath,
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
