import 'package:flutter/material.dart';

class DashboardUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        actions: [
          Icon(Icons.notifications, color: Colors.white),
        ],
      ),

      // Sidebar (Drawer)
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // Drawer Header
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff298ec3),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),

            // Menu List Items
            ListTile(
              leading: Icon(Icons.preview),
              title: Text('Preview'),
              onTap: () {
                // Aksi saat "Preview" ditekan
                Navigator.pop(context); // Menutup Drawer
                // Tambahkan kode navigasi atau logika lainnya di sini
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                // Aksi saat "Logout" ditekan
                Navigator.pop(context); // Menutup Drawer
                // Tambahkan kode navigasi atau logika lainnya di sini
              },
            ),
          ],
        ),
      ),

      body: Center(
        child: Text("Dashboard User"),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: DashboardUser()));
