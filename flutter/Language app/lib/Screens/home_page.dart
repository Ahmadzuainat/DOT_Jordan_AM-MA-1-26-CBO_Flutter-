import 'package:flutter/material.dart';
import 'package:toku/Screens/number_page.dart';

import '../components/CardWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffffde4),

      appBar: AppBar(
        backgroundColor: Color(0xff49332a),
        elevation: 6,
        shadowColor: const Color.fromARGB(255, 254, 123, 123),
        title: const Text("Toku", style: TextStyle(color: Colors.white)),
        shape: Border(
          bottom: BorderSide(
            color: const Color.fromARGB(255, 57, 1, 1),
            width: 4,
          ),
        ),
      ),
      body: Column(
        children: [
          CardWidget(
            text: "Numbers",
            color: Color(0xfff99531),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NumberPage()),
              );
            },
          ),

          CardWidget(
            text: "Family members",
            color: Color(0xff5d8b3e),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NumberPage()),
              );
            },
          ),

          CardWidget(
            text: "Colors",
            color: Color(0xff854cae),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NumberPage()),
              );
            },
          ),

          CardWidget(
            text: "Phrases",
            color: Color(0xff51b0d5),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NumberPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
