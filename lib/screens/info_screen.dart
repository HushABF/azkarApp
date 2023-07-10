import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(

        title: Text(
          'عن التطبيق',
          style: GoogleFonts.arefRuqaa(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.normal
          ),

        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [
              Color(0xFFFAF0D7),
              Color(0xFFFFD9C0),
              Color(0xFF8CC0DE),
              Color(0xFFCCEEBC)
            ])),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(

                child:

                Text(
                  'هذا التطبيق يحتوي على عدة أذكار مع إمكانية حساب عدد مرات ذكرها',
                  style: GoogleFonts.arefRuqaa(
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                )),
          
            Padding(
              padding: const EdgeInsets.all(30),
              child: ElevatedButton(


                onPressed: () {
                 Navigator.pushReplacementNamed(context, '/home_screen');
                },
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)
                            ))),
                child: Text(
                  "عودة للتطبيق",
                  style: GoogleFonts.arefRuqaa(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w100
                  ),
                ),
              ),
            ),
          ]


        )

       ),



    );
  }
}
