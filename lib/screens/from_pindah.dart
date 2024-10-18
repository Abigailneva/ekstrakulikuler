import 'package:flutter/material.dart';
import 'package:my_app/screens/dashboard.dart';

class FromPindah extends StatefulWidget {
  @override
  _FromPindahState createState() => _FromPindahState();
}

class _FromPindahState extends State<FromPindah> {
  // Create TextEditingControllers for each TextField
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _kelasController = TextEditingController();
  final TextEditingController _ekskulController = TextEditingController();
  final TextEditingController _alasanController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
              MaterialPageRoute(builder: (context) => DashboardUser()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader("Form Pengajuan Ekskul"),
                  _buildTextField("Nama", "masukkan nama", false, _namaController),
                  _buildTextField("Kelas", "masukkan kelas", false, _kelasController),
                  _buildTextField("Ekskul", "pilih ekstrakulikuler", false, _ekskulController),
                  _buildTextField("Alasan", "alasan pengajuan", false, _alasanController),
                  SizedBox(height: 20), // Add space before the buttons
                  _buildButtonRow(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18,
          color: Color(0xff0093e0),
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText, String hintText, bool obscureText, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        textAlign: TextAlign.start,
        maxLines: 1,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: Color(0xff000000),
        ),
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          labelStyle: TextStyle(
            color: Color(0xff000000),
            fontSize: 14,
          ),
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Color(0xff999999),
          ),
          filled: true,
          fillColor: Color(0xffffffff),
          border: _inputBorder(),
          focusedBorder: _inputBorder(),
          enabledBorder: _inputBorder(),
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 12),
        ),
      ),
    );
  }

  OutlineInputBorder _inputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: Color(0xff000000), width: 1),
    );
  }

  Widget _buildButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildMaterialButton("Kirim", Color(0xff2991c6), _submitData),
        _buildMaterialButton("Batal", Color(0xffc42525), _clearFields),
      ],
    );
  }

  Widget _buildMaterialButton(String label, Color color, VoidCallback onPressed) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: MaterialButton(
          onPressed: onPressed,
          color: color,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
            side: BorderSide(color: Color(0xff808080), width: 1),
          ),
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xffffffff),
            ),
          ),
          height: 50,
        ),
      ),
    );
  }

  // Method to clear text fields
  void _clearFields() {
    _namaController.clear();
    _kelasController.clear();
    _ekskulController.clear();
    _alasanController.clear();
  }

  // Method to handle data submission
  void _submitData() {
    // Here, you can implement the code to save the data
    // For now, just printing to console
    print("Nama: ${_namaController.text}");
    print("Kelas: ${_kelasController.text}");
    print("Ekskul: ${_ekskulController.text}");
    print("Alasan: ${_alasanController.text}");

    // Navigate to the Dashboard after submission
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => DashboardUser()),
    );
  }
}
