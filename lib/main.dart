import 'package:azkar_app/screens/home_screen.dart';
import 'package:azkar_app/screens/info_screen.dart';
import 'package:azkar_app/screens/launch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main(){
  runApp( azkarApp());
}




class azkarApp extends StatelessWidget {
  const azkarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const [
        Locale("ar"),
        Locale("en")
      ],
      locale: const Locale("ar"),
      initialRoute: '/launch_screen',
      routes:{
        '/launch_screen':(context)=> const LaunchScreen(),
        '/home_screen':(context)=> const HomeScreen(),
        '/info_screen':(context)=> const InfoScreen(),
      },
    );

  }
}
