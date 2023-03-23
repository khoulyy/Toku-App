import "package:flutter/material.dart";
import "package:toku_app/components/category_item.dart";
import "package:toku_app/screens/numbers_page.dart";
import "package:toku_app/screens/family_page.dart";
import 'package:toku_app/screens/colors_page.dart';
import 'package:toku_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFDE5),
      appBar: AppBar(
        backgroundColor: const Color(0xff533D35),
        title: const Text(
          "Toku - Learn Japanese in English",
        ),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const NumbersPage();
              }));
            },
            text: "Numbers",
            color: Colors.orange,
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const FamilyPage();
              }));
            },
            text: "FamilyMembers",
            color: const Color(0xff5D8B41),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const ColorsPage();
              }));
            },
            text: "Colors",
            color: const Color(0xff854CA9),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const PhrasesPage();
              }));
            },
            text: "Phrases",
            color: const Color(0xff51AFD2),
          ),
        ],
      ),
    );
  }
}
