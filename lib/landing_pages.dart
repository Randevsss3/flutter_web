import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPages extends StatefulWidget {
  @override
  _LandingPagesState createState() => _LandingPagesState();
}

class _LandingPagesState extends State<LandingPages> {
  int indexTerpilih = 0;
  @override
  Widget build(BuildContext context) {
    Widget navItem({String title, int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            indexTerpilih = index;
          });
        },
        child: TabContent(
          teks: title,
          gayahuruf: index == indexTerpilih ? FontWeight.w500 : FontWeight.w400,
          warna: Color(0xff1D1E3C),
          warnagaris:
              index == indexTerpilih ? Color(0xffFE998D) : Colors.transparent,
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'landing_page.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'logo.png',
                        width: 72,
                        height: 40,
                      ),
                      Row(
                        children: [
                          navItem(
                            title: 'Guides',
                            index: 0,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          navItem(
                            title: 'Pricing',
                            index: 1,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          navItem(
                            title: 'Team',
                            index: 2,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          navItem(
                            title: 'Stories',
                            index: 3,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                        ],
                      ),
                      Image.asset(
                        'btn.png',
                        height: 53,
                        width: 163,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 91,
                  ),
                  Image.asset(
                    'illustration.png',
                    height: 550,
                    width: 763,
                  ),
                  SizedBox(
                    height: 84,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'btn_scroll.png',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        'Scroll to Learn More',
                        style: GoogleFonts.poppins(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TabContent extends StatelessWidget {
  final String teks;
  final gayahuruf;
  final warna;
  final warnagaris;

  const TabContent({
    Key key,
    this.teks,
    this.gayahuruf,
    this.warna,
    this.warnagaris,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          teks,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: gayahuruf,
            color: warna,
          ),
        ),
        Container(
          height: 2,
          width: 66,
          decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(2),
              color: warnagaris),
        ),
      ],
    );
  }
}
