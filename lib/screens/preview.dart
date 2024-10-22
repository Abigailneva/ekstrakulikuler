import 'package:flutter/material.dart';
import 'package:my_app/screens/audio_sound.dart';
import 'package:my_app/screens/dashboard.dart';
import 'package:my_app/screens/basket.dart';
import 'package:my_app/screens/futsal.dart';
import 'package:my_app/screens/padus.dart';
import 'package:my_app/screens/paskib.dart'; 
import 'package:my_app/screens/voli.dart';
import 'package:my_app/screens/pmr.dart';

class Preview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 4,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff288fc4),
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
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          _buildEkstrakurikulerItem(
            context,
            "Basket",
            "Di ekstrakurikuler basket biasanya mempelajari",
            "assets/images/basket.jpg",
            Basket(), 
          ),
          _buildEkstrakurikulerItem(
            context,
            "Voli",
            "Di ekstrakurikuler Voli biasanya mempelajari",
            "assets/images/voli.jpg",
            Voli(), 
          ),
          _buildEkstrakurikulerItem(
            context,
            "PMR",
            "Di ekstrakurikuler PMR biasanya mempelajari",
            "assets/images/pmr.jpg",
            PMR(), 
          ),
           _buildEkstrakurikulerItem(
            context,
            "Paskibra",
            "Di ekstrakurikuler paskibra biasanya mempelajari",
            "assets/images/paskibra.jpg",
            Paskibra(), 
          ),
           _buildEkstrakurikulerItem(
            context,
            "Futsal",
            "Di ekstrakurikuler futsal biasanya mempelajari",
            "assets/images/futsal.jpg",
            Futsal(), 
          ),
           _buildEkstrakurikulerItem(
            context,
            "Paduan Suara",
            "Di ekstrakurikuler padus biasanya mempelajari",
            "assets/images/padus.jpg",
            PaduanSuara(), 
          ),
           _buildEkstrakurikulerItem(
            context,
            "Audio Sound",
            "Di ekstrakurikuler audio sound biasanya mempelajari",
            "assets/images/audio-sound.jpg",
            AudioSound(), 
          ),
         
        ],
      ),
    );
  }

  Widget _buildEkstrakurikulerItem(
      BuildContext context, String title, String description, String imageUrl, Widget detailScreen) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment(-0.9, 0.0),
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xff000000),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: screenWidth * 0.3,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(imageUrl, fit: BoxFit.cover),
                ),
                decoration: BoxDecoration(
                  color: Color(0x1f000000),
                  border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                ),
              ),
              SizedBox(width: 15),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      description,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(height: 10),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => detailScreen),
                        );
                      },
                      color: Color(0xff2a91c6),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        side: BorderSide(color: Color(0xff808080), width: 1),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      child: Text(
                        "Selengkapnya",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
