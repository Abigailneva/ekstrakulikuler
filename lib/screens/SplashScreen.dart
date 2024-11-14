import 'package:flutter/material.dart';
import 'package:my_app/screens/pilihan.dart';

class SplashScreen extends StatelessWidget {
const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;

  Future.delayed(Duration(seconds: 3)).then((value) {
  Navigator.of(context).pushAndRemoveUntil(
  MaterialPageRoute(
    builder: (context) => Pilihan(),), (Route) => false);
    });

    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Container(
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Color(0x6cdedede),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
                border: Border.all(color: Color(0x4d9e9e9e), width: 1),
              ),
              child: Padding(
                padding: EdgeInsets.all(screenWidth * 0.05),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image(
                      image: AssetImage("assets/images/logo-bn.png"),
                      height: screenHeight * 0.2,
                      width: screenWidth * 0.4,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, screenHeight * 0.02 , 0, 0),
                      child: Text(
                        "EKSTRAKULIKULER",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontSize: screenWidth * 0.06,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Text(
                      "SMK Bagimu Negeriku",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: screenWidth * 0.04,
                        color: Color(0xff2a92c7),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
