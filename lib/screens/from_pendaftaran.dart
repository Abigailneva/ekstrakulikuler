import 'package:flutter/material.dart';
import 'package:my_app/screens/preview.dart';

class FromPendaftaran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe6e6e6),
      appBar: AppBar(
        elevation: 4,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff2991c6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
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
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 50, 20, 60),
            padding: EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(
              color: Color(0xff2a91c6),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(color: Color(0x4d9e9e9e), width: 1),
            ),
            child: Align(
              alignment: Alignment(0.0, 0.1),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 16, 0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(50, 10, 0, 0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "From Pendaftaran",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              fontSize: 26,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(7, 30, 0, 0),
                        child: Align(
                          alignment: Alignment(-0.1, 0.0),
                          child: TextField(
                            controller: TextEditingController(),
                            obscureText: false,
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),
                            decoration: InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                    color: Color(0xff000000), width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                    color: Color(0xff000000), width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                    color: Color(0xff000000), width: 1),
                              ),
                              hintText: "masukkan nama",
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                fontSize: 12,
                                color: Color(0xa6000000),
                              ),
                              filled: true,
                              fillColor: Color(0xffffffff),
                              isDense: false,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 12),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(7, 10, 0, 0),
                        child: TextField(
                          controller: TextEditingController(),
                          obscureText: false,
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                          decoration: InputDecoration(
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                  color: Color(0xff000000), width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                  color: Color(0xff000000), width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                  color: Color(0xff000000), width: 1),
                            ),
                            hintText: "masukkan kelas",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              fontSize: 12,
                              color: Color(0xad000000),
                            ),
                            filled: true,
                            fillColor: Color(0xffffffff),
                            isDense: false,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 12),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(7, 10, 0, 0),
                        child: TextField(
                          controller: TextEditingController(),
                          obscureText: false,
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                          decoration: InputDecoration(
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                  color: Color(0xff000000), width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                  color: Color(0xff000000), width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                  color: Color(0xff000000), width: 1),
                            ),
                            hintText: "masukkan eksrakulikuler ",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              fontSize: 12,
                              color: Color(0xad000000),
                            ),
                            filled: true,
                            fillColor: Color(0xfff2f2f3),
                            isDense: false,
                            contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: Text(
                          "Saya dengan kesadaran diri penuh, memilih untuk mengikuti kegiatan ekstrakurikuler ini untuk 1 semester     ke depan.",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: MaterialButton(
                          onPressed: () {},
                          color: Color(0xff000000),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Text(
                            "Kirim",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          textColor: Color(0xffffffff),
                          height: 40,
                          minWidth: MediaQuery.of(context).size.width * 0.4,
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
}
