import 'package:flutter/material.dart';
import 'package:my_app/screens/dashboard.dart';

class Notifikasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 4,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff2991c7),
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
            fontStyle: FontStyle.normal,
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
        actions: [
          Icon(Icons.notifications, color: Color(0xffffffff), size: 24),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Judul Notifikasi
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                "Notifikasi",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xff000000),
                ),
              ),
            ),

            // Notifikasi dari Super Admin
            _buildNotificationCard(
              context,
              "Super Admin",
              "Pengumuman Ekstrakurikuler",
              "Kegiatan Ekstrakurikuler akan dimulai pada hari Senin pukul 15:00.",
              Icons.admin_panel_settings,
              "10 menit yang lalu",
              Color(0xffafcfe5),
            ),

            SizedBox(height: 16),

            // Notifikasi dari Pelatih
            _buildNotificationCard(
              context,
              "Pelatih Basket",
              "Latihan Tambahan",
              "Latihan tambahan untuk tim basket pada hari Jumat pukul 17:00.",
              Icons.sports_basketball,
              "2 jam yang lalu",
              Color(0xffb1d1e8),
            ),

            SizedBox(height: 16),

            // Notifikasi dari Pelatih Futsal
            _buildNotificationCard(
              context,
              "Pelatih Futsal",
              "Perubahan Jadwal",
              "Latihan futsal dipindahkan ke hari Sabtu pukul 08:00.",
              Icons.sports_soccer,
              "1 hari yang lalu",
              Color(0xffafcfe5),
            ),
          ],
        ),
      ),
    );
  }

  // Widget untuk menampilkan kartu notifikasi
  Widget _buildNotificationCard(
      BuildContext context,
      String sender,
      String title,
      String message,
      IconData icon,
      String time,
      Color color) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          // Ikon Pengirim
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(8),
            child: Icon(icon, size: 30, color: Colors.blueGrey),
          ),
          SizedBox(width: 16),

          // Informasi Notifikasi
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sender,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  message,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black38,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
