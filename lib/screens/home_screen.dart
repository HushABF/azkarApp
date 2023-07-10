import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counterAstghfr = 0;
  int _counterHamd = 0;
  int _counterAkbar = 0;
  int _counterSubhan = 0;
  String _buttonText = 'استغفار';
  String _content = 'أستغفر الله';
  late int _counterChoice = _counterAstghfr;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'الصفحة الرئيسية',
          style: GoogleFonts.arefRuqaa(
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        actions: [
          PopupMenuButton<String>(
              onSelected: (String value) {
                switch (value) {
                  case 'أستغفر الله':
                    setState(() {
                      _content = 'أستغفر الله';
                      _buttonText = 'استغفار';
                      _counterChoice = _counterAstghfr;
                    });
                    break;

                  case 'الحمدلله':
                    setState(() {
                      _content = 'الحمدلله';
                      _buttonText = 'حمد';
                      _counterChoice = _counterHamd;
                    });
                    break;

                  case 'سبحان الله':
                    setState(() {
                      _content = 'سبحان الله';
                      _buttonText = 'تسبيح';
                      _counterChoice = _counterSubhan;
                    });
                    break;

                  case 'الله أكبر':
                    setState(() {
                      _content = 'الله أكبر';
                      _buttonText = 'تكبير';
                      _counterChoice = _counterAkbar;
                    });
                    break;
                }
              },
              elevation: 5,
              offset: const Offset(30, 35),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    height: 15,
                    value: 'أستغفر الله',
                    child: Text(
                      'أستغفر الله',
                      style: GoogleFonts.arefRuqaa(fontSize: 16),
                    ),
                  ),
                  const PopupMenuDivider(),
                  PopupMenuItem(
                    height: 15,
                    value: 'الحمدلله',
                    child: Text(
                      'الحمدلله',
                      style: GoogleFonts.arefRuqaa(fontSize: 16),
                    ),
                  ),
                  const PopupMenuDivider(),
                  PopupMenuItem(
                    height: 15,
                    value: 'سبحان الله',
                    child: Text(
                      'سبحان الله',
                      style: GoogleFonts.arefRuqaa(fontSize: 16),
                    ),
                  ),
                  const PopupMenuDivider(),
                  PopupMenuItem(
                    height: 15,
                    value: 'الله أكبر',
                    child: Text(
                      'الله أكبر',
                      style: GoogleFonts.arefRuqaa(fontSize: 16),
                    ),
                  ),
                ];
              })
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [
              Color(0xFFFCE9F1),
              Color(0xFFF1D4E5),
              Color(0xFF73BBC9),
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 80,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://m.media-amazon.com/images/I/41140kXQ2lL._AC_UF1000,1000_QL80_.jpg')),
                color: Colors.grey,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                    offset: Offset(0, 6),
                  )
                ],
                shape: BoxShape.circle,
              ),
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              height: 60,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 6),
                    )
                  ]),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _content,
                      style: GoogleFonts.arefRuqaa(
                          fontWeight: FontWeight.w700, fontSize: 28),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.green.shade200,
                    height: 60,
                    width: 40,
                    child: Expanded(
                      child: Text(
                        _counterChoice.toString(),
                        style: GoogleFonts.arefRuqaa(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_content == 'أستغفر الله') {
                          setState(() {
                            ++_counterChoice;
                            ++_counterAstghfr;
                          });
                        } else if (_content == 'الحمدلله') {
                          setState(() {
                            ++_counterChoice;
                            ++_counterHamd;
                          });
                        } else if (_content == 'سبحان الله') {
                          setState(() {
                            ++_counterChoice;
                            ++_counterSubhan;
                          });
                        } else if (_content == 'الله أكبر') {
                          setState(() {
                            ++_counterChoice;
                            ++_counterAkbar;
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green.shade400,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                          ))),
                      child: Text(
                        _buttonText,
                        style: GoogleFonts.arefRuqaa(
                            color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // setState(() {
                        //   _counter=0;
                        // });
                        if (_content == 'أستغفر الله') {
                          setState(() {
                            _counterChoice = 0;
                            _counterAstghfr = 0;
                          });
                        } else if (_content == 'الحمدلله') {
                          setState(() {
                            _counterChoice = 0;
                            _counterHamd = 0;
                          });
                        } else if (_content == 'سبحان الله') {
                          setState(() {
                            _counterChoice = 0;
                            _counterSubhan = 0;
                          });
                        } else if (_content == 'الله أكبر') {
                          setState(() {
                            _counterChoice = 0;
                            _counterAkbar = 0;
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10)))),
                      child: Text(
                        "إعادة",
                        style: GoogleFonts.arefRuqaa(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            Navigator.pushReplacementNamed(context, '/info_screen');
          });

        },
        child: const Icon(Icons.account_circle_outlined),
      )
      ,
    );
  }
}
