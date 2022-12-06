import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PlanetPage extends StatelessWidget {
  final Image image;
  final String title;
  final int planet;
  const PlanetPage({super.key, required this.planet, required this.image, required this.title});
  final String desc =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suspendisse sed nisi lacus sed viverra tellus in. Rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant. Vitae nunc sed velit dignissim sodales ut. Habitasse platea dictumst vestibulum rhoncus. Velit egestas dui id ornare arcu odio ut. Interdum varius sit amet mattis vulputate enim nulla. Consequat interdum varius sit amet mattis vulputate enim nulla aliquet. Massa ultricies mi quis hendrerit dolor. Auctor neque vitae tempus quam pellentesque nec. Ultrices sagittis orci a scelerisque purus semper eget duis at. Euismod quis viverra nibh cras pulvinar. Ultricies leo integer malesuada nunc vel risus.\n\nLuctus venenatis lectus magna fringilla urna porttitor. Faucibus turpis in eu mi bibendum. Ac tincidunt vitae semper quis lectus nulla at volutpat. Vestibulum sed arcu non odio euismod lacinia at quis. Sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis. Tellus rutrum tellus pellentesque eu tincidunt. Natoque penatibus et magnis dis parturient montes. Placerat orci nulla pellentesque dignissim enim sit amet. In massa tempor nec feugiat nisl pretium fusce id velit. Arcu ac tortor dignissim convallis aenean et tortor at. Fermentum dui faucibus in ornare quam viverra orci sagittis eu.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff020239),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: Hero(tag: title, child: image),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Text(
              title,
              style: TextStyle(fontFamily: 'Inter', fontSize: 30, fontWeight: FontWeight.w900, color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              desc,
              style: TextStyle(fontFamily: 'Inter', fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
