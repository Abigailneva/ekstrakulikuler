import 'package:flutter/material.dart';
import 'package:my_app/screens/preview.dart';

class AudioSound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

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
              MaterialPageRoute(builder: (context) => Preview()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: screenWidth * 0.8,
                height: screenHeight * 0.2,
                decoration: BoxDecoration(
                  color: Color(0xfff3f2f2),
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3), 
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    "assets/images/audio-sound.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              
              Text(
                "Audio Sound",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height: 10),
              // Deskripsi dengan ukuran teks yang disesuaikan
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Di ekstrakurikuler audio sound, peserta biasanya mempelajari:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Daftar poin tentang kegiatan audio sound
              _buildAudioSoundPoints(),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk menampilkan daftar poin untuk audio sound
  Widget _buildAudioSoundPoints() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildPointItem("1. Teknik Rekaman: Cara merekam suara dengan alat yang tepat."),
        _buildPointItem("2. Editing Audio: Menggunakan perangkat lunak untuk mengedit rekaman."),
        _buildPointItem("3. Pengoperasian Mixer: Mengelola suara dalam pertunjukan langsung."),
        _buildPointItem("4. Pengenalan Alat Musik: Belajar menggunakan berbagai alat musik dan perangkat audio."),
        _buildPointItem("5. Desain Suara: Menciptakan efek suara untuk berbagai keperluan."),
      ],
    );
  }

  
  Widget _buildPointItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: Color(0xff000000),
        ),
      ),
    );
  }
}
