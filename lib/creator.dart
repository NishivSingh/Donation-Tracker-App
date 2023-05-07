import 'package:flutter/material.dart';

class Creator {
  final String id;
  final String name;
  final String profession;
  final String tagline;
  final String profileImageUrl;

  Creator({required this.id,required this.name,required this.profession,required this.tagline,required this.profileImageUrl});
}

class CreatorsProvider extends ChangeNotifier {
  final List<Creator> _creators = [
    Creator(id : "C1", name: "BB ki Vines",profession : "Youtuber",tagline:"abc", profileImageUrl: "https://example.com/john.jpg",),
    Creator(id : "C2" ,name: "Carryminati",profession : "Youtuber",tagline:"abc", profileImageUrl: "https://example.com/john.jpg",),
    Creator(id : "C3",name: "PewDiePie",profession : "Musician",tagline:"abc", profileImageUrl: "https://example.com/john.jpg",),
  ];
  List<Creator> get creators => _creators;
}
