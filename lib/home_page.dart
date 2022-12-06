import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:solarium_ar/card_planet.dart';
import 'package:solarium_ar/unity_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff020239),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(30, 75, 0, 0),
              child: const Text(
                "LET'S",
                style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w900, color: Colors.white, fontSize: 30),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 0, 20),
              child: const Text(
                'EXPLORER',
                style:
                    TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w900, color: Color(0xffFFBB56), fontSize: 50),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3.3,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 9,
                itemBuilder: (context, index) => CardPlanet(planet: index),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2.6,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xff0265E5), Color(0xff01A4E4)]),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(25),
                child: InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => UnityPage())),
                  borderRadius: BorderRadius.circular(25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: const EdgeInsets.symmetric(horizontal: 60), child: Image.asset('assets/img/cam.png')),
                      const Text('Lets Survive To Planetary Reality',
                          style: TextStyle(
                              fontFamily: 'Inter', fontSize: 10, fontWeight: FontWeight.w900, color: Colors.white))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
