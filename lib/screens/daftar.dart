
import 'package:flutter/material.dart';
import 'package:my_app/screens/dashboard.dart';


class Daftar extends StatefulWidget {
  @override
  _DaftarState createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _kelasController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe6e6e6),
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: BoxDecoration(
              color: Color(0xff2a91c6),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
              border: Border.all(color: Color(0x4d9e9e9e), width: 1),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 50, 20, 20),
            padding: EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(color: Color(0x4d9e9e9e), width: 1),
            ),
            child: Align(
              alignment: Alignment(-0.0, 0.0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 16, 16),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image(
                        image: AssetImage("assets/images/logo-bn.png"),
                        height: 130,
                        width: 130,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(90, 8, 0, 0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "EKSTRAKULIKULER",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                        child: Text(
                          "SMK Bagimu Negeriku",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff2990c4),
                          ),
                        ),
                      ),
                      // TextField untuk nama
                      _buildTextField(
                        controller: _namaController,
                        label: "Nama",
                        hint: "masukkan nama",
                      ),
                      // TextField untuk kelas
                      _buildTextField(
                        controller: _kelasController,
                        label: "Kelas",
                        hint: "masukkan kelas",
                      ),
                      // TextField untuk email
                      _buildTextField(
                        controller: _emailController,
                        label: "Email",
                        hint: "masukkan email",
                      ),
                      // TextField untuk password
                      _buildPasswordField(
                        controller: _passwordController,
                        label: "Password",
                        hint: "masukkan password",
                      ),
                     Padding(
                        padding: EdgeInsets.fromLTRB(0, 18, 0, 0),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DashboardUser()), 
                            );
                          },
                          color: Color(0xff298fc3),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Text(
                            "Daftar",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          textColor: Color(0xffffffff),
                          height: 40,
                          minWidth: MediaQuery.of(context).size.width * 0.3,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String hint,
  }) {
    return Padding(
      padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
      child: Align(
        alignment: Alignment(-0.1, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xff000000),
              ),
            ),
            TextField(
              controller: controller,
              obscureText: false,
              textAlign: TextAlign.start,
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xff000000),
              ),
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                filled: true,
                fillColor: Color(0xffffffff),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.black, width: 1), // Border hitam
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Color(0xff298fc3), width: 2), // Border biru saat fokus
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Color(0xff000000), width: 1),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPasswordField({
    required TextEditingController controller,
    required String label,
    required String hint,
  }) {
    return Padding(
      padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
      child: Align(
        alignment: Alignment(-0.1, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xff000000),
              ),
            ),
            TextField(
              controller: controller,
              obscureText: !_isPasswordVisible, // Mengatur visibilitas password
              textAlign: TextAlign.start,
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xff000000),
              ),
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                filled: true,
                fillColor: Color(0xffffffff),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.black, width: 1), // Border hitam
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Color(0xff298fc3), width: 2), // Border biru saat fokus
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Color(0xff000000), width: 1),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Colors.black54,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible; // Mengubah visibilitas
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}