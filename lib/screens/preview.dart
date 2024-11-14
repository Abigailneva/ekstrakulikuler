import 'package:flutter/material.dart';
import 'package:my_app/screens/audio_sound.dart';
import 'package:my_app/screens/basket.dart';
import 'package:my_app/screens/dashboard.dart';
import 'package:my_app/screens/from_pindah.dart';
import 'package:my_app/screens/futsal.dart';
import 'package:my_app/screens/halaman_pendaftaran.dart';
import 'package:my_app/screens/login.dart';
import 'package:my_app/screens/padus.dart';
import 'package:my_app/screens/paskib.dart'; 
import 'package:my_app/screens/voli.dart';
import 'package:my_app/screens/pmr.dart';

class Preview extends StatelessWidget {
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

      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          _buildEkstrakurikulerItem(
            context,
            "Basket",
            "Di ekstrakurikuler basket biasanya mempelajari",
            "assets/images/basket.jpg",
            Basket(), 
          ),
          _buildEkstrakurikulerItem(
            context,
            "Voli",
            "Di ekstrakurikuler Voli biasanya mempelajari",
            "assets/images/voli.jpg",
            Voli(), 
          ),
          _buildEkstrakurikulerItem(
            context,
            "PMR",
            "Di ekstrakurikuler PMR biasanya mempelajari",
            "assets/images/pmr.jpg",
            PMR(), 
          ),
          _buildEkstrakurikulerItem(
            context,
            "Paskibra",
            "Di ekstrakurikuler paskibra biasanya mempelajari",
            "assets/images/paskibra.jpg",
            Paskibra(), 
          ),
          _buildEkstrakurikulerItem(
            context,
            "Futsal",
            "Di ekstrakurikuler futsal biasanya mempelajari",
            "assets/images/futsal.jpg",
            Futsal(), 
          ),
          _buildEkstrakurikulerItem(
            context,
            "Paduan Suara",
            "Di ekstrakurikuler padus biasanya mempelajari",
            "assets/images/padus.jpg",
            PaduanSuara(), 
          ),
          _buildEkstrakurikulerItem(
            context,
            "Audio Sound",
            "Di ekstrakurikuler audio sound biasanya mempelajari",
            "assets/images/audio-sound.jpg",
            AudioSound(), 
          ),
        ],
      ),
    );
  }

  Widget _buildEkstrakurikulerItem(
      BuildContext context, String title, String description, String imageUrl, Widget detailScreen) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    
    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment(-0.9, 0.0),
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: screenWidth * 0.04, 
                color: Color(0xff000000),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: screenWidth * 0.3,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(imageUrl, fit: BoxFit.cover),
                ),
                decoration: BoxDecoration(
                  color: Color(0x1f000000),
                  border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                ),
              ),
              SizedBox(width: screenWidth * 0.03),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      description,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth * 0.035, 
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => detailScreen),
                        );
                      },
                      color: Color(0xff2a91c6),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        side: BorderSide(color: Color(0xff2a91c6), width: 1),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.03, 
                        vertical: screenHeight * 0.01,
                      ),
                      child: Text(
                        "Selengkapnya",
                        style: TextStyle(
                          fontSize: screenWidth * 0.035, 
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
