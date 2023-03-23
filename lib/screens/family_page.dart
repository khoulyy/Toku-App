import "package:flutter/material.dart";
import "package:toku_app/components/family_item.dart";
import 'package:toku_app/models/member.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  final List<Member> familyMembers = const [
    Member(
        sound: 'assets/sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'father'),
    Member(
        sound: 'assets/sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'daughter'),
    Member(
        sound: 'assets/sounds/family_members/grandfather.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojiisan',
        enName: 'grand father'),
    Member(
        sound: 'assets/sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'mother'),
    Member(
        sound: 'assets/sounds/family_members/grandmother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'grand mother'),
    Member(
        sound: 'assets/sounds/family_members/olderbrother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Nisan',
        enName: 'older brother'),
    Member(
        sound: 'assets/sounds/family_members/oldersister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'older sister'),
    Member(
        sound: 'assets/sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'son'),
    Member(
        sound: 'assets/sounds/family_members/youngerbrother.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otouto',
        enName: 'younger brother'),
    Member(
        sound: 'assets/sounds/family_members/youngersister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imouto',
        enName: 'younger sister'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Family Members"),
        backgroundColor: const Color(0xff533D35),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return FamilyItem(member: familyMembers[index]);
        },
      ),
    );
  }
}
