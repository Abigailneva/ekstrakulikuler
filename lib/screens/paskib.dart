import 'package:flutter/material.dart';
import 'package:my_app/screens/from_pendaftaran.dart';
import 'package:my_app/screens/preview.dart';

class Paskibra extends StatelessWidget {
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
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    "assets/images/paskibra.jpg", // Ganti gambar sesuai tema paskibra
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Text judul yang lebih besar dan menarik
              Text(
                "Paskibra",
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
                  "Di ekstrakurikuler Paskibra, peserta biasanya mempelajari:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Daftar poin tentang kegiatan paskibra
              _buildPaskibraPoints(),
              SizedBox(height: 20),
              // Tombol daftar yang responsif
               MaterialButton(
               onPressed: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => FromPendaftaran()), 
                 );
               },
               color: Color(0xff2991c6),
               elevation: 0,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(8.0),
                 side: BorderSide(color: Color(0xff808080), width: 1),
               ),
               padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
               child: Text(
                 "Daftar",
                 style: TextStyle(
                   fontSize: 16,
                   fontWeight: FontWeight.w500,
                   color: Colors.white,
                 ),
               ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk menampilkan daftar poin untuk paskibra
  Widget _buildPaskibraPoints() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildPointItem("1. Baris-Berbaris: Teknik dasar baris-berbaris dan formasi yang benar."),
        _buildPointItem("2. Kepemimpinan: Mengasah kemampuan memimpin dalam kelompok."),
        _buildPointItem("3. Disiplin: Pelatihan kedisiplinan dan tanggung jawab sebagai anggota Paskibra."),
        _buildPointItem("4. Latihan Fisik: Penguatan fisik untuk mendukung kegiatan baris-berbaris."),
        _buildPointItem("5. Persiapan Upacara: Melatih keterampilan dalam mempersiapkan dan menjalankan upacara bendera."),
      ],
    );
  }

  // Fungsi untuk menampilkan item poin tanpa ikon
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
