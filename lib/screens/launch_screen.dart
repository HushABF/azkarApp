import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key:key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
    Navigator.pushReplacementNamed(context, '/home_screen');
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Color(0xFF2D4356),
              Color(0xFF435B66),
              Color(0xFFA76F6F),
              Color(0xFFEAB2A0)

            ]

          )

        ),
        child: Text('تطبيق المسبحة',style: GoogleFonts.arefRuqaa(
          fontSize: 30,
          fontWeight: FontWeight.normal,
          color: Colors.white

        ),),


      ),
    );
  }
}
