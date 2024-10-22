import 'package:flutter/material.dart';
import 'package:my_app/screens/pilihan.dart';

class SplashScreen extends StatelessWidget {
const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  Future.delayed(Duration(seconds: 3)).then((value) {
  Navigator.of(context).pushAndRemoveUntil(
  MaterialPageRoute(
    builder: (context) => Pilihan(),), (Route) => false);
    });

    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
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
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image(
                      image: AssetImage("assets/images/logo-bn.png"),
                      height: 160,
                      width: 160,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: Text(
                        "EKSTRAKULIKULER",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontSize: 22,
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
                        fontSize: 14,
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
