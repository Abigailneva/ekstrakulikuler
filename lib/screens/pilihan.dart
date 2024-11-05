import 'package:flutter/material.dart';
import 'package:my_app/screens/login.dart';

class Pilihan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( 
        color: Colors.white,
        child: Center( 
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min, 
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
             
                Padding(
                  padding: const EdgeInsets.only(bottom: 70.0),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/logo-bn.png', 
                      height: 150,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                
                Text(
                  "Peran Anda di Ekstra SMK BN",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 20), 

            
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(userType: 'Siswa'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF78C1F3),
                    padding: EdgeInsets.symmetric(horizontal: 135, vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 8, 
                  ),
                  child: Text(
                    "Saya Siswa",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),

                
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(userType: 'Pelatih'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF50D890),
                    padding: EdgeInsets.symmetric(horizontal: 130, vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 8, 
                  ),
                  child: Text(
                    "Saya Pelatih",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
