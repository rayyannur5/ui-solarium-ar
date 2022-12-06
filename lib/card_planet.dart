import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:solarium_ar/planet_page.dart';

class CardPlanet extends StatelessWidget {
  /*
    Planet  Nama Planet
    0       Sun
    1       Mercury
    2       Venus
    3       Earth
    4       Mars
    5       Jupiter
    6       Saturn
    7       Uranus
    8       Neptunus
  */
  final int planet;
  List image = [
    Image.asset('assets/img/Sun.png'),
    Image.asset('assets/img/Mercury.png'),
    Image.asset('assets/img/Venus.png'),
    Image.asset('assets/img/Earth.png'),
    Image.asset('assets/img/Mars.png'),
    Image.asset('assets/img/Jupiter.png'),
    Image.asset('assets/img/saturn.png'),
    Image.asset('assets/img/Uranus.png'),
    Image.asset('assets/img/Neptune.png'),
  ];
  List color = [
    const LinearGradient(
        begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xffE09B0E), Color(0xffF1BE38)]),
    const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color.fromARGB(255, 140, 53, 232), Color.fromARGB(255, 63, 7, 123)]),
    const LinearGradient(
        begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xffC1C9CB), Color(0xff2D343E)]),
    const LinearGradient(
        begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xff39A032), Color(0xff013C74)]),
    const LinearGradient(
        begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xffC4380C), Color(0xff2D343E)]),
    const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color.fromARGB(255, 83, 134, 193), Color.fromARGB(255, 22, 55, 92)]),
    const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color.fromARGB(255, 245, 204, 120), Color.fromARGB(255, 211, 123, 7)]),
    const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color.fromARGB(255, 14, 171, 224), Color.fromARGB(255, 6, 99, 135)]),
    const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color.fromARGB(255, 118, 104, 226), Color.fromARGB(255, 51, 52, 151)])
  ];

  List<String> title = [
    'Sun',
    'Mercury',
    'Venus',
    'Earth',
    'Mars',
    'Jupiter',
    'Saturn',
    'Uranus',
    'Neptune',
  ];
  CardPlanet({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: planet == 0 ? EdgeInsets.fromLTRB(30, 0, 15, 0) : EdgeInsets.symmetric(horizontal: 15),
      width: 190,
      decoration: BoxDecoration(
        gradient: color[planet],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(25),
        child: InkWell(
          borderRadius: BorderRadius.circular(25),
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PlanetPage(planet: planet, image: image[planet], title: title[planet]))),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 6,
                  child: Hero(
                    tag: title[planet],
                    child: image[planet],
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  title[planet],
                  style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w900, fontSize: 25, color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
