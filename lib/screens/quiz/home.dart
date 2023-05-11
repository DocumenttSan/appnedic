import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              children: <Widget>[
                Text(
                  'English',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 36,
                  ),
                ),
                Text(
                  'nedic',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 36,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            constraints: BoxConstraints(maxHeight: 400, minHeight: 100),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: GridView(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(top: 10),
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 250, 138, 104),
                        Color.fromARGB(255, 236, 74, 74),
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.01),
                          child: Image.asset(
                            'assets/images/animals.png',
                            width: 120,
                            height: 100,
                          )),
                      Text('Animals',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold)),
                      Text(
                        'คำศัพท์เกี่ยวกับสัตว์',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 250, 138, 104),
                        Color.fromARGB(255, 236, 74, 74),
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.01),
                          child: Image.asset(
                            'assets/images/body.png',
                            width: 120,
                            height: 100,
                          )),
                      Text('Body',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold)),
                      Text(
                        'คำศัพท์เกี่ยวกับร่างกาย',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 250, 138, 104),
                        Color.fromARGB(255, 236, 74, 74),
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.01),
                          child: Image.asset(
                            'assets/images/famil.png',
                            width: 120,
                            height: 100,
                          )),
                      Text('Family',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold)),
                      Text(
                        'คำศัพท์เกี่ยวกับครอบครัว',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 250, 138, 104),
                        Color.fromARGB(255, 236, 74, 74),
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.01),
                          child: Image.asset(
                            'assets/images/animals.png',
                            width: 120,
                            height: 100,
                          )),
                      Text('Colors',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold)),
                      Text(
                        'คำศัพท์เกี่ยวกับสี',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 7, mainAxisSpacing: 7),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, bottom: 20),
            child: Text(
              'Quiz',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            constraints: BoxConstraints(
              minHeight: 100,
              maxHeight: 100,
            ),
          ),
        ],
      ),
    );
  }
}
