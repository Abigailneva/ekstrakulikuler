import 'package:flutter/material.dart';
import 'package:my_app/screens/daftar.dart';
import 'package:flutter/gestures.dart';
import 'package:my_app/screens/dashboard.dart'; 

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false; // untuk mengatur visibilitas password

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
            margin: EdgeInsets.fromLTRB(20, 100, 20, 20),
            padding: EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.7,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
              border: Border.all(color: Color(0x4d9e9e9e), width: 1),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
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
                    SizedBox(height: 20),
                    Text(
                      "EKSTRAKULIKULER",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "SMK Bagimu Negeriku",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xff2990c4),
                      ),
                    ),
                    SizedBox(height: 30),
                    _buildTextField("Email", "masukkan email", false),
                    SizedBox(height: 20),
                    _buildTextField("Password", "masukkan password", true),
                    SizedBox(height: 30),
                    MaterialButton(
                      onPressed: () {
                        // Navigasi ke halaman Dashboard
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DashboardUser()),
                        );
                      },
                      color: Color(0xff298fc3),
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        "Masuk",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      textColor: Colors.white,
                      height: 50,
                      minWidth: MediaQuery.of(context).size.width * 0.6,
                    ),
                    SizedBox(height: 20), // Spasi antara tombol dan teks
                    RichText(
                      text: TextSpan(
                        text: "Belum punya akun? ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        children: [
                          TextSpan(
                            text: "Daftar disini!",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Daftar(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String label, String hintText, bool obscureText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color(0xff000000),
          ),
        ),
        SizedBox(height: 5),
        TextField(
          controller: obscureText ? _passwordController : _emailController,
          obscureText: obscureText && !_isPasswordVisible,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Colors.black,  // Warna teks yang diketik menjadi hitam
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13,
              color: Colors.grey,  
            ),
            filled: true,
            fillColor: Color.fromARGB(255, 255, 255, 255),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: const Color.fromARGB(255, 0, 0, 0)),  
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: Colors.blue, width: 2),  
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            suffixIcon: obscureText
                ? IconButton(
                    icon: Icon(
                      _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                      color: Colors.black54,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible; // Toggle visibility
                      });
                    },
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
