import 'package:flutter/material.dart';

class DashboardUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;

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
            fontSize: screenWidth *0.05,
            color: Color(0xffffffff),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white, size: screenWidth * 0.07),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        actions: [
          Icon(Icons.notifications, color: Colors.white, size: screenWidth * 0.07),
        ],
      ),


      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
   
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff298ec3),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.06,
                ),
              ),
            ),

          
           ListTile(
              leading: Icon(Icons.preview, size: screenWidth * 0.07),
              title: Text(
                'Preview',
                style: TextStyle(fontSize: screenWidth * 0.045),
              ),
              onTap: () {
                Navigator.pop(context);
               
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, size: screenWidth * 0.07),
              title: Text(
                'Logout',
                style: TextStyle(fontSize: screenWidth * 0.045),
              ),
              onTap: () {

                Navigator.pop(context); 
              },
            ),
          ],
        ),
      ),

        body: Center(
        child: Text(
          "Dashboard User",
          style: TextStyle(
            fontSize: screenWidth * 0.06, 
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: DashboardUser()));
